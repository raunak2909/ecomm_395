import 'package:flutter/cupertino.dart';

import '../../ui/pages/login/login_page.dart';
import '../../ui/pages/sign_up/register_page.dart';
import '../../ui/pages/splash/splash_page.dart';


class AppRoutes{

  static const String splash_page = "/";
  static const String login_page = "/login";
  static const String sign_up_page = "/sign_up";
  static const String dashboard_page = "/dashboard";

  static Map<String, WidgetBuilder> mRoutes = {
    splash_page: (context) => const SplashPage(),
    login_page: (context) => const LoginPage(),
    sign_up_page: (context) => const SignUpPage(),
    //dashboard_page: (context) => const DashboardPage(),
  };

}