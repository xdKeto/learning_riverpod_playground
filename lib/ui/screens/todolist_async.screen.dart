import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:learning_riverpod/core/screen_controllers/todo_list.notifier.dart';
import 'package:learning_riverpod/core/screen_controllers/todo_list_async.notifier.dart';
import 'package:learning_riverpod/ui/screens/todolist.screen.dart';

class TodoListAsyncScreen extends ConsumerWidget {
  const TodoListAsyncScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListAsyncProvider);
    final stateNotifier = ref.read(todoListAsyncProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text("Todo Async List"), actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const TodoListScreen();
            }));
          },
          icon: const Icon(Icons.arrow_forward),
        ),
      ],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          stateNotifier.add();
        },
        child: const Icon(Icons.add),
      ),
      body: state.isLoading ? Center(child: CircularProgressIndicator(),) : state.value!.todos.isEmpty
          ? Center(child: Text("No Todos"))
          : ListView(
              children: state.value!.todos.map((e) {
                return Dismissible(
                  key: Key(e.title),
                  confirmDismiss: (direction) {
                    stateNotifier.remove(state.value!.todos.indexOf(e));
                    return Future.value(false);
                  },
                  child: ListTile(title: Text(e.title)),
                );
              }).toList(),
            ),
    );
  }
}
