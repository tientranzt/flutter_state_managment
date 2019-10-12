import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './goal_title.dart';
import '../model/goals_data.dart';
import '../model/Goal.dart';


class GoalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GoalData>(builder: (context, goalData, child) {
      return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            Goal goal = goalData.listGoal[index];
            return GoalTitle(
              title: goal.title,
              isCheck: goal.isDone,
              toggleState: (bool checkboxState) {
                  goalData.updateGoal(goal);
              },
              deleteGoal: (){
                goalData.deleteGoal(goal);
              },
            );
          },
          itemCount: goalData.goalCount);
    });
  }
}
