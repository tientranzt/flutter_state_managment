import 'package:flutter/material.dart';
import './widget/goal_list.dart';
import 'page/add_goal.dart';
import './model/Goal.dart';
void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false,));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Goal> goals = [
    Goal(title: 'Buy the milk'),
    Goal(title: 'Buy the coca'),
    Goal(title: 'Buy the coconut'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.menu,
                    color: Colors.lightBlue,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'THE GOAL',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '12 goals',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: GoalList(goals),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddGoal((titleGoal){
                  setState(() {
                    goals.add(Goal(title: titleGoal));
                  });
                  Navigator.pop(context);
            }));
          }),
    );
  }
}
