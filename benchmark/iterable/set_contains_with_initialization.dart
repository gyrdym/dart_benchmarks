import 'package:benchmark_harness/benchmark_harness.dart';

import 'consts.dart';
import 'source_for_iterables.dart';

class SetContainsWithInitializationBenchmark extends BenchmarkBase {
  const SetContainsWithInitializationBenchmark()
      :super('Set#contains (with initialization)');

  static void main() {
    SetContainsWithInitializationBenchmark().report();
  }

  void run() {
    iterableSource.toSet().contains(targetValue);
  }
}

void main() {
  SetContainsWithInitializationBenchmark.main();
}
