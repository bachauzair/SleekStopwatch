import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import 'LapListModel.dart';
import 'Stop Watch Model.dart';
import 'StopWatchScreen.dart';

void main() {
  runApp(StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stopwatch App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => StopwatchModel()),
          ChangeNotifierProvider(create: (_) => LapListModel()),
        ],
        child: StopwatchScreen(),
      ),
    );
  }
}












