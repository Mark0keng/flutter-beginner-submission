import 'package:dicoding_submission/routes.dart';
import 'package:dicoding_submission/screens/home/home_screen.dart';
import 'package:dicoding_submission/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: SplashScreen()
        // initialRoute: SplashScreen.routeName,
        // routes: routes,
        );
  }
}
