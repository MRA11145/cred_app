import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen_1.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/intro";
  const IntroScreen({Key? key}) : super(key: key); // Fixed key parameter

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Screen1(
          handleBackButton: _handleBackButton, // Pass callback functions to Screen1
          handleEMIPlan: _handleEMIPlan,
        ),
      ),
    );
  }

  // Callback function to handle back button press
  void _handleBackButton() {
    HapticFeedback.vibrate();
    Navigator.pop(context);
  }

  // Placeholder function for handling EMI plan
  void _handleEMIPlan() {
    // Implement your logic for handling EMI plan here
  }
}
