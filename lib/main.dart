import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit_sayac/counter_bloc/counter_bloc.dart';
import 'package:flutter_bloc_cubit_sayac/pages/bloc_page.dart';

import 'counter_cubit/counter_cubit.dart';
import 'pages/cubit_page.dart';

void main() => runApp(const CounterAppBloc());

class CounterAppCubit extends StatelessWidget {
  const CounterAppCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cubit Example',
      home: BlocProvider<CounterCubit>(
        create: (_) => CounterCubit(),
        child: const MyHomePageBloc(),
      ),
    );
  }
}


class CounterAppBloc extends StatelessWidget {
  const CounterAppBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bloc Example',
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: const MyHomePageBloc(),
        ));
  }
}
