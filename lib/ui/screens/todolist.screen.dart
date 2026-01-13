import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learning_riverpod/core/screen_controllers/todo_list.notifier.dart';
import 'package:learning_riverpod/ui/screens/todolist_async.screen.dart';

class TodoListScreen extends ConsumerWidget {
  const TodoListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListProvider);
    final stateNotifier = ref.read(todoListProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text("Todo Sync List"), actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const TodoListAsyncScreen();
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
      body: state.todos.isEmpty
          ? Center(child: Text("No Todos"))
          : ListView(
              children: state.todos.map((e) {
                return Dismissible(
                  key: Key(e.title),
                  confirmDismiss: (direction) {
                    stateNotifier.remove(state.todos.indexOf(e));
                    return Future.value(false);
                  },
                  child: ListTile(title: Text(e.title)),
                );
              }).toList(),
            ),
    );
  }
}
