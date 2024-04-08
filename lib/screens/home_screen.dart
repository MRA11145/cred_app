import 'package:flutter/material.dart';

import '../utils/media_query.dart';
import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // Route name for navigation
  static const routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Initialization logic can be added here if needed
  }

  @override
  Widget build(BuildContext context) {
    // Initialize MediaQueryUtil
    MediaQueryUtil.init(context);

    return const Scaffold(
      // Display the MainScreen widget as the body of the Scaffold
      body: MainScreen(),
    );
  }
}
