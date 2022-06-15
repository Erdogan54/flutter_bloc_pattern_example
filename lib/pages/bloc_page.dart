import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit_sayac/counter_bloc/counter_bloc.dart';

class MyHomePageBloc extends StatelessWidget {
  const MyHomePageBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(" build tetiklendi");

    return BlocBuilder<CounterBloc, CounterStateBloc>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Bloc Example ${state.sayac}'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("güncel sayac degeri bloc",
                    style: Theme.of(context).textTheme.headline4),
                Text("${state.sayac}",
                    style: Theme.of(context).textTheme.headline2),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                child: Text("+5", style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  context
                      .read<CounterBloc>()
                      .add(const ArttirCounterEvent(miktar: 5));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Text("-1", style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  context
                      .read<CounterBloc>()
                      .add(const AzaltCounterEvent(miktar: 1));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Text("+7", style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  context
                      .read<CounterBloc>()
                      .add(const ArttirCounterEvent(miktar: 7));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Text("-3", style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  context
                      .read<CounterBloc>()
                      .add(const AzaltCounterEvent(miktar: 3));
                },
              ),
              const SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                child: Text("-5", style: Theme.of(context).textTheme.headline5),
                onPressed: () {
                  context
                      .read<CounterBloc>()
                      .add(const AzaltCounterEvent(miktar: -5));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
