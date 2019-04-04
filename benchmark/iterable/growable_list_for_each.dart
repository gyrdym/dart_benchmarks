import 'package:benchmark_harness/benchmark_harness.dart';

import 'source_for_iterables.dart';

List list;

class GrowableListForEachBenchmark extends BenchmarkBase {
  const GrowableListForEachBenchmark() : super('GrowableList#forEach');

  static void main() {
    GrowableListForEachBenchmark().report();
  }

  void run() {
    list.forEach((el) {
      el * el;
    });
  }

  void setup() {
    list = List.from(iterableSource, growable: true);
  }
}

void main() {
  GrowableListForEachBenchmark.main();
}
