import 'package:benchmark_harness/benchmark_harness.dart';

import 'source_for_iterables.dart';

List list;

class FixedListForEachBenchmark extends BenchmarkBase {
  const FixedListForEachBenchmark() : super('FixedList#forEach');

  static void main() {
    FixedListForEachBenchmark().report();
  }

  void run() {
    list.forEach((el) {
      el * el;
    });
  }

  void setup() {
    list = List.from(iterableSource, growable: false);
  }
}

void main() {
  FixedListForEachBenchmark.main();
}
