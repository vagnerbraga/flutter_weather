import 'package:bloc/bloc.dart';

import 'package:flutter_weather/src/enumered/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {

    switch (event) {

      case CounterEvent.decrement:
        yield currentState - 1;


        break;

      case CounterEvent.increment:
        yield currentState +1;
        break;

    }
  }

//  @override
//  Stream<int> mapEventToState(CounterEvent event) async* {
//    switch (event) {
//      case CounterEvent.decrement:
//        yield currentState - 1;
//        break;
//      case CounterEvent.increment:
//        yield currentState + 1;
//        break;
//    }
//  }
}
