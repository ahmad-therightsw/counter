import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';
import 'package:injectable/injectable.dart';

import '../entities/counter_entity.dart';

@lazySingleton
class GetCounterUseCase {
  final CounterRepository counterRepository;

  GetCounterUseCase({required this.counterRepository});

  CounterEntity call() {
    return counterRepository.getCounter();
  }
}
