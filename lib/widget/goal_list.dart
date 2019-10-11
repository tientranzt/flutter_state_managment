import 'package:flutter/material.dart';
import './goal_title.dart';
import '../model/Goal.dart';

class GoalList extends StatefulWidget {
  final List<Goal> goals;
  GoalList(this.goals);
  @override
  _GoalListState createState() => _GoalListState();
}

class _GoalListState extends State<GoalList> {


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GoalTitle(
            title: widget.goals[index].title,
            isCheck: widget.goals[index].isDone,
            toggleState: (bool checkboxState) {
              setState(() {
                widget.goals[index].toggleIsDone();
              });
            },
          );
        },
        itemCount: widget.goals.length);
  }
}
