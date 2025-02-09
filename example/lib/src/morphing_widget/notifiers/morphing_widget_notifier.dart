import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:minimal_mvn/minimal_mvn.dart';
import '../views/ui_states/morphing_widget_ui_state.dart';

class MorphingWidgetNotifier extends MMNotifier<MorphingWidgetUIState> {
  MorphingWidgetNotifier() : super(const MorphingWidgetUIState());

  final _random = math.Random();

  BorderRadius _randomBorderRadius() => BorderRadius.only(
        topLeft: Radius.circular(_random.nextDouble() * 100),
        topRight: Radius.circular(_random.nextDouble() * 100),
        bottomLeft: Radius.circular(_random.nextDouble() * 100),
        bottomRight: Radius.circular(_random.nextDouble() * 100),
      );

  void morph() => notify(
        state.copyWith(
          count: state.count + 1,
          backgroundColor: Color.fromRGBO(
            _random.nextInt(256),
            _random.nextInt(256),
            _random.nextInt(256),
            1,
          ),
          borderRadius: _randomBorderRadius(),
        ),
      );
}

final MMManager<MorphingWidgetNotifier> morphingWidgetManager =
    MMManager(MorphingWidgetNotifier.new, autodispose: true);
