import 'package:counter_clean_architecture/feature/counter/data/models/counter.dart';

class LocalDataSource {
  int _value = 7;

  Future<Counter> getCounter() async {
    return Counter(value: _value);
  }
}
