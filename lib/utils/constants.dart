import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/screens/home_screen.dart';
import 'package:flutter_responsive_ui/screens/product_screen.dart';
import 'package:flutter_responsive_ui/screens/registration_screen.dart';

List<Widget> screens = [const HomeScreen(), ProductScreen(), const RegistrationScreen()];

const double kAppBarHeight = 90;
final dayName = [
  "Mon",
  "Tue",
  "Wed",
  "Thu",
  "Fri",
  "Sat",
  "Sun",
  "Mon",
  "Tue",
  "Wed",
];
final dayDate = [26, 27, 28, 29, 30, 1, 2, 3, 4, 5];
