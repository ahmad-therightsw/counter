import 'package:counter_clean_architecture/feature/counter/data/repository/counter_repository_impl.dart';
import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';
import 'package:counter_clean_architecture/feature/counter/domain/use-cases/get_counter_use_case.dart';
import 'package:counter_clean_architecture/feature/counter/domain/use-cases/increament_counter_use_case.dart';
import 'package:counter_clean_architecture/feature/counter/presentation/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'feature/counter/data/data-source/local/local_data_source.dart';
import 'feature/counter/presentation/widgets/counter_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterLocalDataSource = LocalDataSource();
    final counterRepository =
        CounterRepositoryImpl(localDataSource: counterLocalDataSource);
    final getCounterUserCase =
        GetCounterUseCase(counterRepository: counterRepository);
    final getIncrementUserCase =
        IncrementCounterUseCase(counterRepository: counterRepository);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
          create: (_) => CounterBloc(getCounterUserCase, getIncrementUserCase),
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
