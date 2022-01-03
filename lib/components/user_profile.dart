import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kitchen_space_2/components/bottom_bar.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final searchIcon = '#84a59d';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('User Profile'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor(searchIcon),
          onPressed: () {},
          child: const Icon(Icons.search), //icon inside button
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
