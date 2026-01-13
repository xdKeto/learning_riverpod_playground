// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list.service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(todoListService)
final todoListServiceProvider = TodoListServiceProvider._();

final class TodoListServiceProvider
    extends
        $FunctionalProvider<
          TodoListMockService,
          TodoListMockService,
          TodoListMockService
        >
    with $Provider<TodoListMockService> {
  TodoListServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'todoListServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$todoListServiceHash();

  @$internal
  @override
  $ProviderElement<TodoListMockService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TodoListMockService create(Ref ref) {
    return todoListService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TodoListMockService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TodoListMockService>(value),
    );
  }
}

String _$todoListServiceHash() => r'63f2aecb824f24fa0aa6b7b92269b8ccaaf1a2ab';
