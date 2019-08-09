import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_weather/src/models/counter_bloc.dart';
import 'package:flutter_weather/src/pages/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<CounterBloc>(
        builder: (context) => CounterBloc(),
        child: CounterPage(),
      ),
    );
  }
}