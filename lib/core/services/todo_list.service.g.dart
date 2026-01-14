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
        isAutoDispose: false,
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

String _$todoListServiceHash() => r'0eebee5010b3d5cc190f6b6d7a391cc73cfd1009';
