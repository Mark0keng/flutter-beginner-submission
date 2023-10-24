import 'package:dicoding_submission/screens/sign_in/sign_in_screen.dart';
import 'package:dicoding_submission/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen()
};
