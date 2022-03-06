extension MapStringString on Map<String, String> {
  bool isEqual(Map<String, String> map) {
    if (length != map.length) {
      return false;
    }

    for (String key in keys) {
      if (map[key] != this[key]) {
        return false;
      }
    }

    return true;
  }
}

extension MapStringDynamic on Map<String, dynamic> {
  Map<String, dynamic> filterNull() =>
      this..removeWhere((key, value) => value == null);
}
