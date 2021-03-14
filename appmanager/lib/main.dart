import 'package:flutter/material.dart';
import 'package:appmanager/src/home.dart';
import 'package:appmanager/src/login.dart';

void main() => runApp(TC());

class TC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHome(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
