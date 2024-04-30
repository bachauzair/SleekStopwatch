import 'package:flutter/cupertino.dart';

class LapListModel extends ChangeNotifier {
  List<String> _laps = [];

  List<String> get laps => _laps;

  void addLap(String lapTime) {
    _laps.add(lapTime);
    notifyListeners();
  }
}