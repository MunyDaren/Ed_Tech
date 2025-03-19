import 'package:get/get.dart';

class LangService extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello',
          'change_lang': 'Eng',
          'welcome':'Hello welcome to my app',
        },
        'km': {
          'title': 'សួស្តី',
          'change_lang': 'ខ្មែរ',
          'welcome': 'សួស្តី សូមស្វាគមន៍មកកាន់កម្មវិធីរបស់ខ្ញុំ',
        },
      };
}
