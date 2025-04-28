import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../blocs/chroma_counter_cubit.dart';
import '../blocs/states/chroma_counter_state.dart';
import 'chroma_counter_bloc.dart';

final class ChromaCounterPageBloc extends StatelessWidget {
  const ChromaCounterPageBloc({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chroma Counter (BLoC)'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 32,
          children: [
            const _SelectedCount(),
            const ChromaCounterBloc(),
            ElevatedButton(
              onPressed: () {
                unawaited(
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (final context) => const _BottomSheetContent(),
                    isScrollControlled: true,
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.9,
                    ),
                    useSafeArea: true,
                  ),
                );
              },
              child: const Text('Reveal'),
            ),
          ],
        ),
      ),
    );
  }
}

class _SelectedCount extends StatelessWidget {
  const _SelectedCount();
  static final _formatter = DateFormat('mm:ss');

  @override
  Widget build(final BuildContext context) {
    return BlocBuilder<ChromaCounterCubit, ChromaCounterState>(
      builder: (final context, final state) {
        final now = _formatter.format(DateTime.now());
        return Text(
          'Selected: ${state.milestone} at $now',
          style: Theme.of(context).textTheme.titleMedium,
        );
      },
    );
  }
}

class _BottomSheetContent extends StatelessWidget {
  const _BottomSheetContent();

  @override
  Widget build(final BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 400,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: ChromaCounterBloc(),
          ),
          Positioned(
            right: 16,
            bottom: 32,
            child: _Button(),
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button();

  @override
  Widget build(final BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<ChromaCounterCubit>().nextMetamorph(),
      child: const Icon(Icons.refresh),
    );
  }
}
