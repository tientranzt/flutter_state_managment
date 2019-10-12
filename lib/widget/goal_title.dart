import 'package:flutter/material.dart';


class GoalTitle extends StatelessWidget {
  final String title;
  final bool isCheck;
  final Function toggleState;
  final Function deleteGoal;

  GoalTitle({this.title, this.isCheck , this.toggleState, this.deleteGoal});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      onLongPress: deleteGoal,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            decoration: isCheck ? TextDecoration.lineThrough: null,
            fontSize: 18),
      ),
      trailing: Checkbox(value: isCheck, onChanged: toggleState),
    );
  }
}



