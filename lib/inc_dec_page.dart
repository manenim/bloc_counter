import 'package:bloc_tut/bloc/counter_bloc.dart';
import 'package:bloc_tut/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          // onPressed: () => counterCubit.increment(),
          onPressed: () => counterBloc.add(CounterIncremented()),

          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          // onPressed: () => counterCubit.decrement(),
          onPressed: () => counterBloc.add(CounterDecremented()),
          tooltip: 'Decrement',
          child: const Icon(Icons.minimize),
        ),
      ],
    ));
  }
}
