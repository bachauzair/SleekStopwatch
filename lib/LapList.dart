import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LapListModel.dart';

class LapList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lapListModel = Provider.of<LapListModel>(context);
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: ListView.builder(
        itemCount: lapListModel.laps.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              'Lap ${index + 1}: ${lapListModel.laps[index]}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}