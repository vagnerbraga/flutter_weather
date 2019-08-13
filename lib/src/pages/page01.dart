import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/src/models/bloc.dart';
import 'package:flutter_weather/src/pages/background.dart';
import 'package:flutter_weather/src/pages/actions.dart';
import 'package:flutter_weather/src/pages/counter_page.dart';
import 'package:flutter_weather/src/models/counter_bloc.dart';

class Page01 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Center(
            child: FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.cancel),
            ),
          )
        ],
      ),  
        
    );
  }
}
