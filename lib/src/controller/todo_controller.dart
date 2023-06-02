import 'package:flutter_getx_with_firebase_crud/src/data/model/todo_model.dart';
import 'package:get/get.dart';

import '../data/repository/todo_repository.dart';

class TodoController extends GetxController {
  final _todos = Rx<List<TodoModel>>([]);

  List<TodoModel> get todos => _todos.value;

  @override
  void onReady() {
    super.onReady();
    _todos.bindStream(TodoRepository.fetchTodo());
  }
}
