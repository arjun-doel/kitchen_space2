import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:search_choices/search_choices.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:blurry/blurry.dart';
import 'package:kitchen_space_2/components/bottom_bar.dart';
import 'package:kitchen_space_2/components/meals_view.dart';

void main() => runApp(const HomeView());

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final backgroundColor = '#f8edeb';
  final searchIcon = '#84a59d';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: HexColor(backgroundColor)),
      title: 'Kitchen_Space 1',
      home: Scaffold(
        body: MealView(),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
            backgroundColor: HexColor(searchIcon),
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.QUESTION,
                animType: AnimType.SCALE,
                title: 'Dialog Title',
                desc: 'Dialog description here.............',
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
            child: const Icon(Icons.search), //icon inside button
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomBar(),
      ),
    );
  }
}
