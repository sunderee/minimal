import 'package:dart_mappable/dart_mappable.dart';
import 'package:minimal_mvn/minimal_mvn.dart';

part 'counter_ui_state.mapper.dart';

@MappableClass()
class CounterUIState extends MMState with CounterUIStateMappable {
  const CounterUIState({
    required this.count,
  });

  final int count;
}
