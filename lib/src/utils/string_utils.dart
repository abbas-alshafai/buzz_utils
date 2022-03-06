import 'package:sprintf/sprintf.dart';

import 'map_utils.dart';

class StringUtils {

  StringUtils._();
  static final StringUtils instance = StringUtils._();

  static const String empty = '';

  bool isBlank(final String? string) => string == null || string.trim().isEmpty;

  bool isNotBlank(final String? string) => ! isBlank(string);

  // String nextLineByKey(String value, String key){
  //   if(isBlank(value)) {
  //     return empty;
  //   }
  //
  //   return StringBuffer("\n$key: $value").toString();
  // }

}
