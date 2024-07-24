import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class IncrementCounterUseCase {
  final CounterRepository counterRepository;

  IncrementCounterUseCase({required this.counterRepository});

  void call() async {
    counterRepository.increment();
  }
}

@lazySingleton
class DecrementCounterUseCase {
  final CounterRepository counterRepository;

  DecrementCounterUseCase({required this.counterRepository});

  void call() async {
    counterRepository.decrement();
  }
}
