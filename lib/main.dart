import 'package:Lenggananku_Layout/screens/Dashboard.dart';
import 'package:Lenggananku_Layout/screens/Login.dart';
import 'package:Lenggananku_Layout/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/Splash',
      routes: <String, WidgetBuilder>{
        '/Splash': (BuildContext ctx) => SplashScreenPage(),
        'Dashboard': (BuildContext ctx) => DashboardPage(),
        '/Login': (BuildContext ctx) => LoginPage(),
      },
    );
  }
}
