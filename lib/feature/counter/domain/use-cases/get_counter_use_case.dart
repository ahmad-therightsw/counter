import 'package:counter_clean_architecture/feature/counter/domain/repositories/counter_repository.dart';

import '../entities/counter_entity.dart';

class GetCounterUseCase {
  final CounterRepository counterRepository;

  GetCounterUseCase({required this.counterRepository});

  Future<CounterEntity> execute() async {
    return await counterRepository.getCounter();
  }
}
