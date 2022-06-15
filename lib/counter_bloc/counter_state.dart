part of 'counter_bloc.dart';

@immutable
abstract class CounterStateBloc {
  final int sayac;

  const CounterStateBloc({required this.sayac});
}

class CounterInitialBloc extends CounterStateBloc {
  const CounterInitialBloc({required int baslangicDegeri})
      : super(sayac: baslangicDegeri);
}

class MyCounterSatateBloc extends CounterStateBloc {
  const MyCounterSatateBloc({required int sayac}) : super(sayac: sayac);
}
