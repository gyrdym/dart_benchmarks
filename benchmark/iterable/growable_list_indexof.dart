import 'package:benchmark_harness/benchmark_harness.dart';

import 'consts.dart';
import 'source_for_iterables.dart';

var list;

class GrowableListIndexOfBenchmark extends BenchmarkBase {
  const GrowableListIndexOfBenchmark() : super('GrowableList#indexOf');

  static void main() {
    GrowableListIndexOfBenchmark().report();
  }

  void run() {
    // the index should be 4797
    list.indexOf(targetValue);
  }

  void setup() {
    list = List.from(iterableSource, growable: true);
  }
}

// Main function runs the benchmark.
void main() {
  // Run TemplateBenchmark.
  GrowableListIndexOfBenchmark.main();
}
