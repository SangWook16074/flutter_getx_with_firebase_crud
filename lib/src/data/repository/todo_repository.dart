import 'package:flutter_getx_with_firebase_crud/src/data/model/todo_model.dart';
import 'package:flutter_getx_with_firebase_crud/src/data/provider/todo_provider.dart';

class TodoRepository {
  static Stream<List<TodoModel>> fetchTodo() => TodoApi.getTodos();
}
