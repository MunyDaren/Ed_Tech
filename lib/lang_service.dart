import 'package:get/get.dart';

class LangService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello',
          'change_lang': 'Eng',
          'welcome':'Hello welcome to Ed Tech',
          'email': 'Email',
          'password': 'Password',
          'submit': 'Submit',
        },
        'km': {
          'title': 'សួស្តី',
          'change_lang': 'ខ្មែរ',
          'welcome': 'សូមស្វាគមន៍មកកាន់សាលាអែតធិច',
          'email': 'អ៊ីម៉ែល',
          'password': 'ពាក្យសម្ងាត់',
          'submit': 'បញ្ជូន',
        },
      };
}
