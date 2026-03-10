import 'package:flutter/widgets.dart';
import 'package:flutter_bootcamp_two/session_eight/create_user_screen.dart';
import 'package:flutter_bootcamp_two/session_eight/view_all_user_screen.dart';
import 'package:flutter_bootcamp_two/session_seven/login_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String createUser = '/createUser';
  static const String viewAllUser = "/viewallUser";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      login: (context) => LoginScreen(),
      createUser: (context) => CreateUserScreen(),
      viewAllUser:(context)=>ViewAllUserScreen()
    };
  }
}
