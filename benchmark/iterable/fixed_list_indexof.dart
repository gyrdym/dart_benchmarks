import 'package:benchmark_harness/benchmark_harness.dart';

import 'consts.dart';
import 'source_for_iterables.dart';

var list;

class FixedListIndexOfBenchmark extends BenchmarkBase {
  const FixedListIndexOfBenchmark() : super('FixedList#indexOf');

  static void main() {
    FixedListIndexOfBenchmark().report();
  }

  void run() {
    // the index should be 4797
    list.indexOf(targetValue);
  }

  void setup() {
    list = List.from(iterableSource, growable: false);
  }
}

void main() {
  FixedListIndexOfBenchmark.main();
}
