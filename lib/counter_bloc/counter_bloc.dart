import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEventBloc, CounterStateBloc> {
  CounterBloc() : super(const CounterInitialBloc(baslangicDegeri: 0)) {
    on<ArttirCounterEvent>((event, emit) {
      late int miktar;
      if (event.miktar != null) {
        miktar = event.miktar!;
      } else {
        miktar = 1;
      }

      
      emit(MyCounterSatateBloc(sayac: state.sayac+miktar));
      print(event.miktar);
    });
    on<AzaltCounterEvent>((event, emit) {
      late int miktar;
      if (event.miktar != null) {
        miktar = event.miktar!;
      } else {
        miktar = 1;
      }
      emit(MyCounterSatateBloc(sayac: state.sayac-miktar));
    });
  }
}




/* if (event is ArttirCounterEvent) {
        emit(MyCounterSatateBloc(sayac: state.sayac + 1));
      } else if (event is AzaltCounterEvent) {
        emit(MyCounterSatateBloc(sayac: state.sayac - 1));
      } */