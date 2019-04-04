import 'package:benchmark_harness/benchmark_harness.dart';
import 'consts.dart';
import 'source_for_iterables.dart';

Set set;

class SetContainsBenchmark extends BenchmarkBase {
  const SetContainsBenchmark() : super('Set#contains');

  static void main() {
    SetContainsBenchmark().report();
  }

  void run() {
    set.contains(targetValue);
  }

  void setup() {
    set = Set.from(iterableSource);
  }
}

void main() {
  SetContainsBenchmark.main();
}
