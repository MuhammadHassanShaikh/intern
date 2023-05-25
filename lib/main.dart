import 'package:flutter/material.dart';
import 'package:ii1/screens/account_selection.dart';
import 'package:ii1/screens/login_page.dart';
import 'package:ii1/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/account': (context) => Account(),
        '/login': (context) => Login()
      },
    );
  }
}
