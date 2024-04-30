import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LapList.dart';
import 'StopWatchWidget.dart';
import 'Stopwatchcontrols.dart';
import 'main.dart';

class StopwatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StopwatchWidget(),
            SizedBox(height: 40.0),
            StopwatchControls(),
            SizedBox(height: 40.0),
            Expanded(child: LapList()),
          ],
        ),
      ),
    );
  }
}