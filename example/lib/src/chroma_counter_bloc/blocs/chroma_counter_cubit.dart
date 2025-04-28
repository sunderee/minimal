import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'states/chroma_counter_state.dart';

class ChromaCounterCubit extends Cubit<ChromaCounterState> {
  ChromaCounterCubit(super.initialState);

  static final _random = math.Random();

  void nextMetamorph() => emit(
        state.copyWith(
          count: state.count + 1,
          backgroundColor: _randomColor(),
          borderRadius: _randomRadius(),
        ),
      );

  Color _randomColor() => Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1,
      );

  BorderRadius _randomRadius() => BorderRadius.only(
        topLeft: Radius.circular(_random.nextDouble() * 100),
        topRight: Radius.circular(_random.nextDouble() * 100),
        bottomLeft: Radius.circular(_random.nextDouble() * 100),
        bottomRight: Radius.circular(_random.nextDouble() * 100),
      );
}
