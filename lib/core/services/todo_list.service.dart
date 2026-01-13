import 'package:faker/faker.dart';
import 'package:learning_riverpod/core/models/todo_list.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_list.service.g.dart';

@riverpod
TodoListMockService todoListService(Ref ref) {
  return TodoListMockService();
}

class TodoListMockService {
  List<Todo> list = [];

  Future<List<Todo>> get() async {
    await Future.delayed(Duration(seconds: 1));

    return list;
  }

  Future<List<Todo>> add() async {
    await Future.delayed(Duration(seconds: 1));
    final title = faker.lorem.sentence();
    final newTodo = Todo(title: title);
    list = [...list, newTodo];

    return list;
  }

  Future<List<Todo>> remove(int index) async {
    await Future.delayed(Duration(seconds: 1));

    list.removeAt(index);

    return list;
  }
}
