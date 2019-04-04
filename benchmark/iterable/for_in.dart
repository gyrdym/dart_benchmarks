import 'package:benchmark_harness/benchmark_harness.dart';

import 'source_for_iterables.dart';

var list;

class ForInBenchmark extends BenchmarkBase {
  const ForInBenchmark() : super('ForIn');

  static void main() {
    ForInBenchmark().report();
  }

  void run() {
    for (final el in list) {
      el * el;
    }
  }

  void setup() {
    list = List.from(iterableSource, growable: false);
  }
}

void main() {
  ForInBenchmark.main();
}
