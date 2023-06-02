import 'package:flutter/material.dart';
import 'package:flutter_getx_with_firebase_crud/src/controller/todo_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends GetView<TodoController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Obx(
        () => ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              final todoModel = controller.todos[index];
              return ListTile(
                title: Text(todoModel.todo),
                subtitle: Text('${todoModel.time}'),
                trailing: (todoModel.isDone)
                    ? const Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                    : const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
              );
            }),
      ),
    );
  }
}
