import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:animate_icons/animate_icons.dart';
import 'package:kitchen_space_2/components/bottom_bar.dart';
import 'package:kitchen_space_2/components/meals_view.dart';

void main() => runApp(const HomeView());

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController _textFieldController = TextEditingController();
  final backgroundColor = '#f8edeb';
  final searchIcon = '#84a59d';

  late String codeDialog;
  late String valueText;

  final progress = 1;
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
              //   AwesomeDialog(
              //     context: context,
              //     dialogType: DialogType.QUESTION,
              //     animType: AnimType.SCALE,
              //     title: 'Dialog Title',
              //     desc: 'Dialog description here.............',
              //     btnCancelOnPress: () {},
              //     btnOkOnPress: () {},
              //   ).show();
              // },
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Column(children: [
                        AnimateIcons(
                          startIcon: Icons.add_circle,
                          endIcon: Icons.add_circle_outline,
                          size: 100.0,
                          controller: AnimateIconController(),
                          // add this tooltip for the start icon
                          startTooltip: 'Icons.add_circle',
                          // add this tooltip for the end icon
                          endTooltip: 'Icons.add_circle_outline',
                          onStartIconPress: () {
                            print("Clicked on Add Icon");
                            return true;
                          },
                          onEndIconPress: () {
                            print("Clicked on Close Icon");
                            return true;
                          },
                          duration: Duration(milliseconds: 500),
                          startIconColor: Colors.deepPurple,
                          endIconColor: Colors.deepOrange,
                          clockwise: false,
                        ),
                        Text('TextField in Dialog'),
                      ]),
                      content: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueText = value;
                          });
                        },
                        controller: _textFieldController,
                        decoration: const InputDecoration(
                            hintText: "Text Field in Dialog"),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          child: Text('CANCEL'),
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                        ),
                        FlatButton(
                          color: Colors.green,
                          textColor: Colors.white,
                          child: Text('OK'),
                          onPressed: () {
                            setState(() {
                              codeDialog = valueText;
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ],
                    );
                  });
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
