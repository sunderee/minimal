import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class ChromaCounterState extends Equatable {
  const ChromaCounterState({
    this.backgroundColor = Colors.blue,
    this.borderRadius = BorderRadius.zero,
    this.count = 0,
  }) : milestone = count ~/ 10;

  final Color backgroundColor;
  final BorderRadius borderRadius;
  final int count;
  final int milestone;

  @override
  List<Object?> get props => [backgroundColor, borderRadius, count, milestone];

  ChromaCounterState copyWith({
    final Color? backgroundColor,
    final BorderRadius? borderRadius,
    final int? count,
  }) =>
      ChromaCounterState(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        borderRadius: borderRadius ?? this.borderRadius,
        count: count ?? this.count,
      );
}
