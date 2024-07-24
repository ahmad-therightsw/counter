import 'package:counter_clean_architecture/feature/counter/data/datasource/local/counter_local_datasource.dart';
import 'package:counter_clean_architecture/feature/counter/domain/entities/counter_entity.dart';
import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CounterRepository)
class CounterRepositoryImpl extends CounterRepository {
  ///counter data source
  final CounterLocalDataSource localDataSource;

  CounterRepositoryImpl({required this.localDataSource});

  @override
  CounterEntity getCounter() {
    final currentCounter = localDataSource.getCounter();
    return CounterEntity(value: currentCounter.value);
  }

  @override
  void decrement() {
    localDataSource.decrement();
  }

  @override
  void increment() {
    localDataSource.increment();
  }
}
