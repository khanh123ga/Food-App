import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Home_Screen.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      bodyPadding: EdgeInsets.only(top: 70),
      pages: [
        PageViewModel(
            title: "Choose Your Favorite Food",
            body: "choose your favorite food of your choice by our app",
            image: Image.asset("images/onboadring 1.png"),
            decoration: pageDecoration),
        PageViewModel(
            title: " Menu",
            body: "The menu has many types of hamburgers and drinks",
            image: Image.asset("images/onboadring 2.png"),
            decoration: pageDecoration),
        PageViewModel(
          title: "Get delivery at your food step",
          body: "Your food at your food step and just click on on step",
          image: Image.asset("images/onboadring 3.png"),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              child: Text(
                "Let's Shop",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(60),
                backgroundColor: Color(0xEFEF6969),
              ),
            ),
          ),
        )
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        "Back",
        style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xEFEF6969)),
      ),
      next: Text(
        "Next",
        style: TextStyle(fontWeight: FontWeight.w800, color: Color(0xEFEF6969)),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(10),
        activeSize: Size(20, 10),
        activeColor: Color(0xEFEF6969),
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
