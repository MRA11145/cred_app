
import 'package:cred_app/screens/intro_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class MainApp extends StatelessWidget {
  
  var routes = {
    HomeScreen.routeName: (context) => const HomeScreen(),
    IntroScreen.routeName : (context) => const IntroScreen(),
  };

  var initialRoute = HomeScreen.routeName;

  @override
  Widget build(BuildContext context) {
    initialRoute = initialRoute;
    return MaterialApp(
      initialRoute: initialRoute,
      routes: routes,
      debugShowCheckedModeBanner: true,
    );
  }
}

