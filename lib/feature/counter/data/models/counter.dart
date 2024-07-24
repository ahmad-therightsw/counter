class Counter {
  int value;

  Counter({required this.value});

  Counter copyWith({int? value}) {
    return Counter(value: value ?? this.value);
  }
}
