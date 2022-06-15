part of 'counter_bloc.dart';

@immutable
abstract class CounterEventBloc {
  final int? miktar;
  const CounterEventBloc({this.miktar = 1});
}

class ArttirCounterEvent extends CounterEventBloc {
  const ArttirCounterEvent({int? miktar}) : super(miktar: miktar);
}

class AzaltCounterEvent extends CounterEventBloc {
  const AzaltCounterEvent({int? miktar}) : super(miktar: miktar);
}
