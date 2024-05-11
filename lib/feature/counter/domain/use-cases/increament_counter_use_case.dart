import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';

import '../entities/counter_entity.dart';

class IncrementCounterUseCase {
  final CounterRepository counterRepository;

  IncrementCounterUseCase({required this.counterRepository});

  Future<CounterEntity> execute() async {
    final currentCounter = await counterRepository.getCounter();
    final updateCounter = CounterEntity(value: currentCounter.value + 1);

    ///to dave counter , call save method
    return updateCounter;
  }
}
