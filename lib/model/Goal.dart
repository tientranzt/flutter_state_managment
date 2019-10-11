class Goal {
  String title;
  bool isDone;
  Goal({this.title, this.isDone = false});

  void toggleIsDone(){
    isDone = !isDone;
  }
}