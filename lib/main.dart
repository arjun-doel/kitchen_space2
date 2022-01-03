import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kitchen_space_2/meals_view.dart';

void main() => runApp(const HomeView());

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  final backgroundColor = '#f8edeb';
  final appBar = '#f28482';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: HexColor(backgroundColor)),
      title: 'Kitchen_Space 1',
      home: Scaffold(
        body: MealView(),
        bottomNavigationBar: BottomAppBar(
          color: HexColor(appBar),
          child: SizedBox(
            height: 40,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(
                      Icons.dinner_dining,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
