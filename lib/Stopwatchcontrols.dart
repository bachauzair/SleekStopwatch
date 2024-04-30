import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LapListModel.dart';
import 'Stop Watch Model.dart';

class StopwatchControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stopwatchModel = Provider.of<StopwatchModel>(context);
    final lapListModel = Provider.of<LapListModel>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () {
            if (!stopwatchModel.isRunning) {
              stopwatchModel.startStopwatch();
            } else {
              stopwatchModel.pauseStopwatch();
            }
          },
          child: Icon(stopwatchModel.isRunning ? Icons.pause : Icons.play_arrow),
          backgroundColor: Colors.blueAccent,
        ),
        FloatingActionButton(
          onPressed: () {
            stopwatchModel.resetStopwatch();
            lapListModel.laps.clear();
          },
          child: Icon(Icons.stop),
          backgroundColor: Colors.red,
        ),
        FloatingActionButton(
          onPressed: () {
            lapListModel.addLap(stopwatchModel.stopwatchTime);
          },
          child: Icon(Icons.flag),
          backgroundColor: Colors.green,
        ),
      ],
    );
  }
}