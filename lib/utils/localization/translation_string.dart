import 'package:get/get.dart';

class TranslationString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'appName': 'Hotel Admin',
          'travel_hour': 'Travel Hour',
          'welcome_to_admin_panel': 'Welcome to the Admin Panel',
          'sign_in': 'Sign In',
          'enter_password': 'Enter Password',
          'password': 'Password',
          'states' : 'States',
          'blogs' : 'Blogs',
          'bookmark' : 'Bookmarks ',
        },
        'ne_NP': {
          'appName': 'होटल प्रशासक',
          'travel_hour': 'घुम्ने समय',
          'welcome_to_admin_panel': 'प्रशासक प्यानलमा स्वागत छ',
          'sign_in': 'साइन इन गर्नुहोस्ं',
          'enter_password': 'पासवर्ड प्रविष्ट गर्नुहोस्',
          'password': 'पासवर्ड',
          'states' : 'States',
          'blogs' : 'Blogs',
        }
      };
}
