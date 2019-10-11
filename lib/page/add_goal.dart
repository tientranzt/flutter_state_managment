import 'package:flutter/material.dart';

class AddGoal extends StatefulWidget {
  final Function addGoal;

  AddGoal(this.addGoal);

  @override
  _AddGoalState createState() => _AddGoalState();
}

class _AddGoalState extends State<AddGoal> {
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Your Perfect Goal',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: titleController,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            onPressed: () {
              widget.addGoal(titleController.text);
            },
            child: Text('Add Goal',
                style: TextStyle(color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
