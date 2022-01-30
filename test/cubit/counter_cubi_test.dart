import 'package:flutter_bloc_concepts/cubit/counter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    late CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });

    tearDown(() {
      counterCubit.close();
    });

    test(
        'The initial state for the CounterCubit is CounterState(counterValue:0)',
        () {
      expect(counterCubit.state,
          CounterState(counterValue: 0, wasInremented: true));
    });
  });
}
