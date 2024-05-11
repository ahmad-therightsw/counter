import 'package:counter_clean_architecture/feature/counter/domain/entities/counter_entity.dart';

abstract class CounterState {
  CounterEntity counterEntity;

  CounterState({required this.counterEntity});
}

class InitialCounterState extends CounterState {
  InitialCounterState(CounterEntity counterEntity)
      : super(counterEntity: counterEntity);
}

class LoadedCounterState extends CounterState {
  LoadedCounterState(CounterEntity counterEntity)
      : super(counterEntity: counterEntity);
}

class GetCounterState extends CounterState {
  GetCounterState(CounterEntity counterEntity)
      : super(counterEntity: counterEntity);
}

class IncrementCounterState extends CounterState {
  IncrementCounterState(CounterEntity counterEntity)
      : super(counterEntity: counterEntity);
}

class ErrorCounterState extends CounterState {
  String error;
  ErrorCounterState({required this.error})
      : super(counterEntity: CounterEntity(value: 0));
}
