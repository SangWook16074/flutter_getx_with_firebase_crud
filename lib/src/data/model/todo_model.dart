import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String? id;
  late String todo;
  late bool isDone;
  late Timestamp time;

  TodoModel({
    required this.todo,
    required this.isDone,
  });

  TodoModel.fromJson(DocumentSnapshot doc) {
    id = doc.id;
    todo = doc['todo'];
    isDone = doc['isDone'];
    time = doc['time'];
  }
}
