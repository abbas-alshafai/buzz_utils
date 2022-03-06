import 'package:buzz_utils/src/utils/string_utils.dart';
import 'package:sprintf/sprintf.dart';

extension StringNumber on String {
  bool isNumeric() => double.tryParse(this) != null;

  bool isInteger() => int.tryParse(this) != null;

  bool isSameLength(final String string) =>
      StringUtils.instance.isNotBlank(string) && length == string.length;

  bool isShorterThan(final String string) =>
      StringUtils.instance.isNotBlank(string) && string.length > length;

  String addNextLine() => StringBuffer('\n$this').toString();

  String setParams({required final List<String> params}) =>
      sprintf(this, params);
}
