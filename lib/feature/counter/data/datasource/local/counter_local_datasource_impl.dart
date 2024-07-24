import 'package:counter_clean_architecture/feature/counter/data/datasource/local/counter_local_datasource.dart';
import 'package:counter_clean_architecture/feature/counter/data/models/counter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CounterLocalDataSource)
class CounterLocalDataSourceImpl extends CounterLocalDataSource {
  Counter counter = Counter(value: 0);

  @override
  Counter getCounter() {
    return counter;
  }

  @override
  void increment() {
    counter = counter.copyWith(value: counter.value + 1);
  }

  @override
  void decrement() {
    counter = counter.copyWith(value: counter.value - 1);
  }
}
