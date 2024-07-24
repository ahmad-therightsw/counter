// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/counter/data/datasource/local/counter_local_datasource.dart'
    as _i3;
import '../../feature/counter/data/datasource/local/counter_local_datasource_impl.dart'
    as _i4;
import '../../feature/counter/data/repository/counter_repository_impl.dart'
    as _i6;
import '../../feature/counter/domain/repositories/counter_repository.dart'
    as _i5;
import '../../feature/counter/domain/usecases/get_counter_use_case.dart' as _i8;
import '../../feature/counter/domain/usecases/increament_counter_use_case.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CounterLocalDataSource>(
        () => _i4.CounterLocalDataSourceImpl());
    gh.lazySingleton<_i5.CounterRepository>(() => _i6.CounterRepositoryImpl(
        localDataSource: gh<_i3.CounterLocalDataSource>()));
    gh.lazySingleton<_i7.DecrementCounterUseCase>(() =>
        _i7.DecrementCounterUseCase(
            counterRepository: gh<_i5.CounterRepository>()));
    gh.lazySingleton<_i8.GetCounterUseCase>(() =>
        _i8.GetCounterUseCase(counterRepository: gh<_i5.CounterRepository>()));
    gh.lazySingleton<_i7.IncrementCounterUseCase>(() =>
        _i7.IncrementCounterUseCase(
            counterRepository: gh<_i5.CounterRepository>()));
    return this;
  }
}
