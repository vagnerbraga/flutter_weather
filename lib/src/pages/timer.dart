import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather/src/models/bloc.dart';
import 'package:flutter_weather/src/pages/background.dart';
import 'package:flutter_weather/src/pages/actions.dart';
import 'package:flutter_weather/src/pages/page01.dart';

class Timer extends StatelessWidget {
  static const TextStyle timerTextStyle = TextStyle(
    fontSize: 60,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Timer timer')),
      //drawer: _buildDrawwer(context),
      body: Stack(
        children: [
          Background(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: BlocBuilder<TimerBloc, TimerState>(
                    builder: (context, state) {
                      final String minutesStr = ((state.duration / 60) % 60)
                          .floor()
                          .toString()
                          .padLeft(2, '0');
                      final String secondsStr = (state.duration % 60)
                          .floor()
                          .toString()
                          .padLeft(2, '0');
                      return Text(
                        '$minutesStr:$secondsStr',
                        style: Timer.timerTextStyle,
                      );
                    },
                  ),
                ),
              ),
              BlocBuilder<TimerBloc, TimerState>(
                condition: (previousState, currentState) =>
                currentState.runtimeType != previousState.runtimeType,
                builder: (context, state) => ActionsControl(),
              ),
              Row( children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.play_arrow),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.playlist_add),
                  ),
                )
                ],

              )


            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDrawwer(BuildContext context){
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("titulo"),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text("Counter Page 01"),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Page01()));
            },
          )
        ],
      ),
    );
  }
}
