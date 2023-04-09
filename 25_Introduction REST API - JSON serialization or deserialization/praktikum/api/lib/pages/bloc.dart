import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:assets/pages/header.dart';
import 'package:assets/bloc/counter_bloc.dart';
import 'package:assets/bloc/counter_event.dart';
import 'package:assets/bloc/counter_state.dart';

class BlocPage extends StatefulWidget {
  const BlocPage({super.key, required this.title});
  final String title;

  @override
  State<BlocPage> createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: const Header(),
        body: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${state.value}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Increment());
                      },
                      child: const Text('Tambah')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Decrement());
                      },
                      child: const Text('Kurang')),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
