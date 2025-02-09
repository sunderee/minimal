import 'package:minimal_mvn/minimal_mvn.dart';

import '../views/ui_states/counter_ui_state.dart';

class CounterNotifier extends MMNotifier<CounterUIState> {
  CounterNotifier() : super(const CounterUIState(count: 0));

  void increment() => notify(state.copyWith(count: state.count + 1));
}

final MMManager<CounterNotifier> counterManager =
    MMManager(CounterNotifier.new);

final MMManager<CounterNotifier> disposableCounterManager =
    MMManager(CounterNotifier.new, autodispose: true);
