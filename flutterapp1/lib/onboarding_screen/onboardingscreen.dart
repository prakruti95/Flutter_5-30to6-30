import 'package:flutter/material.dart';
import 'package:flutterapp1/onboarding_screen/widgets/header.dart';
import 'package:flutterapp1/onboarding_screen/widgets/next_page_button.dart';
import 'package:flutterapp1/onboarding_screen/widgets/onboarding_page_indicator.dart';
import 'package:flutterapp1/splashscreen/loginscreen.dart';

import '../constants.dart';

class Onboarding  extends StatefulWidget
{
  const Onboarding ({super.key});

  @override
  State<Onboarding > createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding > {
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      backgroundColor: kBrown,
      body: SafeArea
        (
        child: Column
          (
            children: <Widget>
            [
              Header(onSkip: _goToLogin),
              OnboardingPageIndicator(
                currentPage: _currentPage,
                child: NextPageButton(onPressed: _nextPage),
              ),
            ]
        ),

      ),
    );
  }

  _goToLogin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  void _setNextPage(int nextPageNumber) {
    setState(() {
      _currentPage = nextPageNumber;
    });
  }


  void _nextPage() {
    switch (_currentPage) {
      case 1:
        _setNextPage(2);
        break;
      case 2:
        _setNextPage(3);
        break;
      case 3:
        _goToLogin();
        break;
    }
  }
}
