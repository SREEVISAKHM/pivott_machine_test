import 'package:flutter/material.dart';
import 'package:pivott/view/sign_up_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pivott',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          headline3: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          subtitle1: TextStyle(
            color: Colors.orange,
            fontSize: 12,
            decoration: TextDecoration.underline,
          ),
          subtitle2: TextStyle(
            color: Colors.orange,
            fontSize: 15,
          ),
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: Colors.black,
          iconTheme: IconThemeData(
            color: Color(0xffEBEBEB),
          ),
        ),
      ),
      home: SignUpView(),
    );
  }
}
