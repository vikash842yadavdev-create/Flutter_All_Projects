import 'package:get/get_navigation/src/root/internacionalization.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {'hello': 'Hello'},
    'zh_CN': {'hello': '你好'},
  };
}
