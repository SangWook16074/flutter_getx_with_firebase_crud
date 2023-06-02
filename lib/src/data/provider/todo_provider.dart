import 'package:flutter_getx_with_firebase_crud/src/constants/firebase_constants.dart';
import 'package:flutter_getx_with_firebase_crud/src/data/model/todo_model.dart';

class TodoApi {
  static Stream<List<TodoModel>> getTodos() {
    return firebaseFirestore.collection('Todos').snapshots().map((doc) {
      List<TodoModel> todos = [];
      for (var todo in doc.docs) {
        final todoModel = TodoModel.fromJson(todo);
        todos.add(todoModel);
      }
      return todos;
    });
  }
}
