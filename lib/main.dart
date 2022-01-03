import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kitchen_space_2/meals_view.dart';

void main() => runApp(const HomeView());

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: HexColor('#f7ede2')),
      title: 'Kitchen_Space 1',
      home: MealView(),
    );
  }
}
