import 'package:dr_grahy/screen/auth_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';
import 'screen/intro_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dr Grahy',
      theme: ThemeData(
          primaryColor: Colors.blue[400],
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
            headline2: TextStyle(color: Colors.black12),
            headline3: TextStyle(
              color: Colors.black38,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
          )),
      home: IntroScreen(),
      routes: {
        'login': (context) => AuthScreen(
              authType: AuthType.login,
            ),
        'register': (context) => AuthScreen(authType: AuthType.register),
      },
    );
  }
}
