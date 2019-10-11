import 'package:flutter/material.dart';


class GoalTitle extends StatelessWidget {
  final title;
  final bool isCheck;
  final Function toggleState;

  GoalTitle({this.title, this.isCheck , this.toggleState});

  @override
  Widget build(BuildContext context) {

    return ListTile(
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



