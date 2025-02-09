import 'package:flutter/material.dart';

import '../../notifiers/morphing_widget_notifier.dart';

class MorphingWidget extends StatelessWidget {
  const MorphingWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    final notifier = morphingWidgetManager.notifier;

    return ListenableBuilder(
      listenable: notifier,
      builder: (final _, final __) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: notifier.state.backgroundColor,
            borderRadius: notifier.state.borderRadius,
          ),
          child: Center(
            child: Text(
              '${notifier.state.count}',
              style: const TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
