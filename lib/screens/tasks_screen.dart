import 'package:flutter/material.dart';
import 'package:todo_app/screens/constants.dart';
import 'package:todo_app/screens/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen();

  @override
  Widget build(BuildContext context) {
    MediaQueryData query = MediaQuery.of(context);
    final height = query.size.height;
    final width = query.size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 0.1 * width,
                left: 0.05 * width,
                right: 0.05 * width,
                bottom: 0.05 * width,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: primaryColor,
                      size: 0.1 * width,
                    ),
                    backgroundColor: secondaryColor,
                    radius: 0.07 * width,
                  ),
                  SizedBox(
                    height: 0.01 * height,
                  ),
                  Text(
                    'TODO App',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 0.09 * width,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '12 Tasks',
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: 0.04 * width,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 0.025 * width),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0.1 * width),
                    topRight: Radius.circular(0.1 * width),
                  ),
                ),
                child: TaskList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
