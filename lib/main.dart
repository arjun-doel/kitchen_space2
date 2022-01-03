import 'package:flutter/material.dart';
import 'package:kitchen_space_2/meals_view.dart';

void main() => runApp(const HomeView());

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final backGround = const Color(0xFFF89921);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: backGround),
      title: 'Kitchen_Space 1',
      home: MealView(),
    );
  }
}
