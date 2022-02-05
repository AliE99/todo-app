import 'package:flutter/material.dart';
import 'package:todo_app/screens/constants.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData query = MediaQuery.of(context);
    final height = query.size.height;
    final width = query.size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0.07 * width),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 0.03 * height,
          ),
          Text(
            'Add a Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: primaryColor, fontSize: 0.07 * width),
          ),
          TextFormField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Add',
              style: TextStyle(fontSize: 0.04 * width),
            ),
            style: TextButton.styleFrom(
              primary: secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
