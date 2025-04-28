import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/chroma_counter_cubit.dart';
import '../blocs/states/chroma_counter_state.dart';
import 'chroma_counter_page.dart';

// This class substitutes whatever class contains MaterialApp. In case of
// declaring Blocs/Cubits later in the widget tree, it would replace whatever
// class contains children that would consume Blocs/Cubits.
class ChromaCounterPageContainer extends StatelessWidget {
  const ChromaCounterPageContainer({super.key});

  @override
  Widget build(final BuildContext context) {
    return BlocProvider(
      create: (final context) => ChromaCounterCubit(const ChromaCounterState()),
      child: const ChromaCounterPageBloc(),
    );
  }
}
