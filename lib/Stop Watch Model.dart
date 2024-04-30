import 'dart:async';

import 'package:flutter/cupertino.dart';

class StopwatchModel extends ChangeNotifier {
  Stopwatch _stopwatch = Stopwatch();
  Timer? _timer;

  bool get isRunning => _stopwatch.isRunning;

  void startStopwatch() {
    _stopwatch.start();
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      notifyListeners();
    });
  }

  void pauseStopwatch() {
    _stopwatch.stop();
    _timer?.cancel();
    notifyListeners();
  }

  void resetStopwatch() {
    _stopwatch.reset();
    _timer?.cancel();
    notifyListeners();
  }

  String get stopwatchTime {
    return formatTime(_stopwatch.elapsedMilliseconds);
  }

  String formatTime(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$minutesStr:$secondsStr.$hundredsStr";
  }
}