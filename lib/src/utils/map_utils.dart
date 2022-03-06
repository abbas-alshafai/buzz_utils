class MapUtils {
  MapUtils._();

  static final MapUtils instance = MapUtils._();

  bool isEmpty(Map? map) => map == null || map.isEmpty;

  bool isNotEmpty(Map? map) => !isEmpty(map);

  Map<String, dynamic> getMap(final String key, final data) =>
      data[key] != null ? Map<String, dynamic>.from(data[key]) : const {};

}
