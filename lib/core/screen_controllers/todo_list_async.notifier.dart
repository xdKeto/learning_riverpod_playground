// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:faker/faker.dart';
import 'package:learning_riverpod/core/models/todo_list.model.dart';
import 'package:learning_riverpod/core/services/todo_list.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_list_async.notifier.g.dart';

@riverpod
class TodoListAsyncNotifier extends _$TodoListAsyncNotifier {
  // final TodoListMockService get todoService => ref

  @override
  Future<TodoList> build() async {
    return TodoList(todos: []);
  }

  void add() {
    // final title = faker.lorem.sentence();

    // final newTodo = Todo(title: title);
    // state = state.copyWith(todos: [...state.todos, newTodo]);
  }

  void remove(int index) {
    // // state.todos.removeAt(index);
    // final modifiedTodos = [...state.todos];
    // modifiedTodos.removeAt(index);
    // state = state.copyWith(todos: modifiedTodos);
  }
}
