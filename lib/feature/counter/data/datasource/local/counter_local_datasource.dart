import 'package:counter_clean_architecture/feature/counter/data/models/counter.dart';

abstract class CounterLocalDataSource {
  void increment();
  Counter getCounter();
  void decrement();
}
