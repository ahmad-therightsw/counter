import 'package:counter_clean_architecture/feature/counter/domain/entities/counter_entity.dart';
import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';

import '../data-source/local/local_data_source.dart';
import '../models/counter.dart';

class CounterRepositoryImpl extends CounterRepository {
  ///counter data source
  LocalDataSource localDataSource;

  CounterRepositoryImpl({required this.localDataSource});

  @override
  Future<CounterEntity> getCounter() async {
    final Counter currentCounter = await localDataSource.getCounter();

    return CounterEntity(value: currentCounter.value);
  }
}
