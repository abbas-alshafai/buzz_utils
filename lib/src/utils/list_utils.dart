class ListUtils {
  ListUtils._();

  static final ListUtils instance = ListUtils._();

  bool isEmpty(final List? list) => list == null || list.isEmpty;

  bool isNotEmpty(final List? list) => !isEmpty(list);
}
