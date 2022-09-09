import 'package:flutter/material.dart';
import '../main/OnBoardingScreen.dart';
import '../main/home_screen.dart';

void home(context) => Navigator.pushAndRemoveUntil(
    (context),
    MaterialPageRoute(builder: (context) => const HomeScreen()),
    (route) => false);

void onbording(context) => Navigator.pushAndRemoveUntil(
    (context),
    MaterialPageRoute(builder: (context) => const OnBoardingScreen()),
    (route) => false);
