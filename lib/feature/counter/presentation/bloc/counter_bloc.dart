import 'package:counter_clean_architecture/feature/counter/domain/entities/counter_entity.dart';
import 'package:counter_clean_architecture/feature/counter/domain/usecases/get_counter_use_case.dart';
import 'package:counter_clean_architecture/feature/counter/domain/usecases/increament_counter_use_case.dart';
import 'package:counter_clean_architecture/feature/counter/presentation/bloc/counter_state.dart';
import 'package:counter_clean_architecture/utils/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final getCounterUserCase = getIt<GetCounterUseCase>();
  final incrementCounterUseCase = getIt<IncrementCounterUseCase>();
  final decrementCounterUseCase = getIt<DecrementCounterUseCase>();

  CounterBloc() : super(InitialCounterState(CounterEntity(value: 0))) {
    on<CounterEvent>((event, emit) async {
      if (event is IncrementCounter) {
        incrementCounterUseCase();
        final counter = getCounterUserCase();
        emit(LoadedCounterState(counter));
      } else if (event is DecrementCounter) {
        decrementCounterUseCase();
        final counter = getCounterUserCase();
        emit(LoadedCounterState(counter));
      }
    });
  }
}
