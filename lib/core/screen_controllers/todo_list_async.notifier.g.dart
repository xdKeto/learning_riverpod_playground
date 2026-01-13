// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_async.notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoListAsyncNotifier)
final todoListAsyncProvider = TodoListAsyncNotifierProvider._();

final class TodoListAsyncNotifierProvider
    extends $AsyncNotifierProvider<TodoListAsyncNotifier, TodoList> {
  TodoListAsyncNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoListAsyncProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoListAsyncNotifierHash();

  @$internal
  @override
  TodoListAsyncNotifier create() => TodoListAsyncNotifier();
}

String _$todoListAsyncNotifierHash() =>
    r'267245fcc67a873173ee04e74ed1b80328d014e7';

abstract class _$TodoListAsyncNotifier extends $AsyncNotifier<TodoList> {
  FutureOr<TodoList> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<TodoList>, TodoList>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<TodoList>, TodoList>,
              AsyncValue<TodoList>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
