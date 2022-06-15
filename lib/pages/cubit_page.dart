import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit_sayac/counter_cubit/counter_cubit.dart';

class MyHomePageCubit extends StatelessWidget {
  const MyHomePageCubit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("counter cubit build tetiklendi");
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Bloc Cubit Example ${state.sayac}'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("güncel sayac degeri",
                    style: Theme.of(context).textTheme.headline4),
                Text("${state.sayac}",
                    style: Theme.of(context).textTheme.headline4),

                /* Text(context.watch<CounterCubit>().state.toString(),
                  style: Theme.of(context).textTheme.headline4), */
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Text("+${state.sayac}",
                    style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  context.read<CounterCubit>().arttir();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Text("-${state.sayac}",
                    style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).azalt();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
