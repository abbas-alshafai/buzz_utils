extension ListExtension on List {
  T getFirstNonNull<T>() => firstWhere((element) => element != null);

  List<List> chunkLists({int chunkSize = 10}) {
    List<List> lists = [];

    int iterations = length ~/ chunkSize + (length % chunkSize == 0 ? 0 : 1);

    for (int chunkNumber = 1; chunkNumber <= iterations; chunkNumber++) {
      lists.add(chunkList(chunkNumber: chunkNumber, chunkSize: chunkSize));
    }
    return lists;
  }

  List chunkList({int? chunkSize, int? chunkNumber}) {
    if (chunkNumber == null || chunkNumber < 1) {
      chunkNumber = 1;
    }

    if (chunkSize == null || chunkSize > length) {
      return this;
    }

    int from = (chunkNumber - 1) * chunkSize;
    int to =
        chunkNumber * chunkSize > length ? length : chunkNumber * chunkSize;
    return sublist(from, to);
  }
}
