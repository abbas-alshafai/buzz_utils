typedef SetGetValueCallback<T, E> = T Function(E value);
typedef SetValueCallback<T> = void Function(T value);
typedef GetValueCallback<T> = T Function();
typedef FutureSetGetValueCallback<T, E> = Future<T> Function(E value);
typedef FutureSetValueCallback<T> = Future<void> Function(T value);
typedef FutureGetValueCallback<T> = Future<T> Function();
