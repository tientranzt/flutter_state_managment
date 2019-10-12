import 'package:flutter/foundation.dart';
import './Goal.dart';
import 'dart:collection';

class GoalData extends ChangeNotifier{
  List<Goal> _goals = [
    Goal(title: 'Buy the milk'),
    Goal(title: 'Buy the coca'),
    Goal(title: 'Buy the coconut'),
  ];

  UnmodifiableListView<Goal> get listGoal{
    return UnmodifiableListView(_goals);
  }
  int get goalCount{
    return _goals.length;
  }

  void addGoal(String newGoal){
    final goal = Goal(title: newGoal);
    print(goal.title);
    _goals.add(goal);
    notifyListeners();
  }

  void updateGoal(Goal goal){
    goal.toggleIsDone();
    notifyListeners();
  }

  void deleteGoal(Goal goal){
    _goals.remove(goal);
    notifyListeners();
  }
}
