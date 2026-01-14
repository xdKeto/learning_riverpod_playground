// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:faker/faker.dart';
import 'package:learning_riverpod/core/models/todo_list.model.dart';
import 'package:learning_riverpod/core/services/todo_list.service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_list_async.notifier.g.dart';

@riverpod
class TodoListAsyncNotifier extends _$TodoListAsyncNotifier {
  TodoListMockService get todoService => ref.read(todoListServiceProvider);

  @override
  Future<TodoList> build() async {
    return getTodos();
  }

  Future<TodoList> getTodos() async {
    try {
      final result = await todoService.get();
      return TodoList(todos: result);
    } catch (e) {
      print(e);
    }

    return TodoList(todos: []);
  }

  Future<void> add() async {
    try {
      state = const AsyncLoading();
      final result = await todoService.add();
      state = AsyncData(state.value!.copyWith(todos: result));
    } catch (e) {
      // print(e);
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<void> remove(int index) async {
    try {
      state = const AsyncLoading();
      final result = await todoService.remove(index);
      state = AsyncData(state.value!.copyWith(todos: result));
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}
