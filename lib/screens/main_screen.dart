import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/neopop.dart';

import '../constants/strings_constants.dart';
import '../utils/common_widgets.dart';
import '../utils/media_query.dart';
import '../utils/screen_trans.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: MediaQueryUtil.getPaddingTop(),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQueryUtil.getValueInPixel(100),
              ),
              CommonWidgets.getBackButtonWidget(), // Display the back button
              Expanded(child: getAppNameWidget()), // Display the app name
              SizedBox(
                width: MediaQueryUtil.getValueInPixel(190),
              ),
            ],
          ),
          SizedBox(
            height: MediaQueryUtil.getDefaultHeightDim(1500),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQueryUtil.getValueInPixel(150),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getCongratsWidget(), // Display the congratulations message
                  SizedBox(
                    height: MediaQueryUtil.getValueInPixel(80),
                  ),
                  getMessageWidget(), // Display the main message
                  SizedBox(
                    height: MediaQueryUtil.getValueInPixel(30),
                  ),
                  getBalanceWidget(), // Display the balance
                  SizedBox(
                    height: MediaQueryUtil.getValueInPixel(30),
                  ),
                  subTextWidget(), // Display the subtext
                  SizedBox(
                    height: MediaQueryUtil.getValueInPixel(150),
                  ),
                ],
              ),
            ],
          ),
          getNeoPopButton(StringConstants.takeALook, Colors.white) // Display the "Take a Look" button
        ],
      ),
    );
  }

  // Widgets for various UI elements
  Widget getAppNameWidget() {
    return CommonWidgets.FontWidget(StringConstants.homeTile, Colors.white, FontWeight.bold, "Inter", FontStyle.normal, 80, TextAlign.center);
  }

  Widget getCongratsWidget() {
    return CommonWidgets.FontWidget(StringConstants.congrats, Colors.white.withOpacity(0.7), FontWeight.w400, "Inter", FontStyle.normal, 50, TextAlign.center);
  }

  Widget getMessageWidget() {
    return CommonWidgets.FontWidget(StringConstants.msg, Colors.white, FontWeight.w500, "Inter", FontStyle.normal, 80, TextAlign.left);
  }

  Widget getBalanceWidget() {
    return CommonWidgets.FontWidget("\u{20B9} 1,25,000", Colors.greenAccent, FontWeight.w700, "Inter", FontStyle.normal, 80, TextAlign.center);
  }

  Widget subTextWidget() {
    return CommonWidgets.FontWidget(StringConstants.subText, Colors.white.withOpacity(0.5), FontWeight.w400, "Inter", FontStyle.normal, 50, TextAlign.left);
  }

  Widget getNeoPopButton(String text, Color color) {
    return NeoPopButton(
      color: color,
      onTapUp: () => HapticFeedback.vibrate(),
      onTapDown: () => _handleTakeALook(), // Handle button tap
      child: SizedBox(
        height: MediaQueryUtil.getValueInPixel(200),
        width: MediaQueryUtil.getValueInPixel(800),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonWidgets.FontWidget(text, Colors.black, FontWeight.w800, "Inter", FontStyle.normal, 70, TextAlign.left) // Button text
            ],
          ),
        ),
      ),
    );
  }

  // Handle "Take a Look" button tap
  void _handleTakeALook() {
    HapticFeedback.vibrate();
    Navigator.push(context, ScreenTrans.introScreen());
  }
}
