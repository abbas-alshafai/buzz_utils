class StringUtils {

  StringUtils._();
  static final StringUtils instance = StringUtils._();

  static const String empty = '';

  bool isBlank(final String? string) => string == null || string.trim().isEmpty;

  bool isNotBlank(final String? string) => ! isBlank(string);
}
