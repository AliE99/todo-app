// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Icon(Icons.list),
            Text('TODO'),
          ],
        ),
      ),
    );
  }
}
