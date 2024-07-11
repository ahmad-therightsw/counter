import 'package:counter_clean_architecture/feature/counter/presentation/bloc/counter_bloc.dart';
import 'package:counter_clean_architecture/utils/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'feature/counter/presentation/widgets/counter_widget.dart';

void main() async {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
          create: (_) => CounterBloc(),
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}
