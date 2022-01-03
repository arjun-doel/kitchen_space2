import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kitchen_space_2/components/bottom_bar.dart';
import 'package:kitchen_space_2/components/meals_view.dart';

void main() => runApp(const HomeView());

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final backgroundColor = '#f8edeb';
  final searchIcon = '#84a59d';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: HexColor(backgroundColor)),
      title: 'Kitchen_Space 1',
      home: Scaffold(
        body: MealView(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor(searchIcon),
          onPressed: () {
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Text('Search'),
            );
          },
          child: const Icon(Icons.search), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
