import '../../domain/entities/counter_entity.dart';

abstract class CounterRepository {
  CounterEntity getCounter();
  void increment();
  void decrement();
}
