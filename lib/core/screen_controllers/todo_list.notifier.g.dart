// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(TodoListNotifier)
final todoListProvider = TodoListNotifierProvider._();

final class TodoListNotifierProvider
    extends $NotifierProvider<TodoListNotifier, TodoList> {
  TodoListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoListNotifierHash();

  @$internal
  @override
  TodoListNotifier create() => TodoListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoList value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoList>(value),
    );
  }
}

String _$todoListNotifierHash() => r'ecd20e1d64c07a4ec39c59f3dea5b3e7a2eb152d';

abstract class _$TodoListNotifier extends $Notifier<TodoList> {
  TodoList build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<TodoList, TodoList>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<TodoList, TodoList>,
              TodoList,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
