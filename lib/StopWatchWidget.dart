import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Stop Watch Model.dart';

class StopwatchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stopwatchModel = Provider.of<StopwatchModel>(context);
    return Text(
      stopwatchModel.stopwatchTime,
      style: TextStyle(fontSize: 64.0, color: Colors.white),
    );
  }
}