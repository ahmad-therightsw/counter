import 'package:counter_clean_architecture/feature/counter/domain/entities/counter_entity.dart';
import 'package:counter_clean_architecture/feature/counter/domain/use-cases/increament_counter_use_case.dart';
import 'package:counter_clean_architecture/feature/counter/presentation/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use-cases/get_counter_use_case.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final GetCounterUseCase getCounterUserCase;
  final IncrementCounterUseCase incrementCounterUseCase;

  CounterBloc(this.getCounterUserCase, this.incrementCounterUseCase)
      : super(InitialCounterState(CounterEntity(value: 0))) {
    on<CounterEvent>((event, emit) async {
      if (event is IncrementCounter) {
        final incrementNewState = await _mapIncrementCounterToState();
        emit(incrementNewState);
      }
    });
  }

  Future<CounterState> _mapIncrementCounterToState() async {
    try {
      final counterEntity = await incrementCounterUseCase.execute();
      return LoadedCounterState(counterEntity);
    } catch (_) {
      return ErrorCounterState(error: "Something went wrong!!!");
    }
  }
}
