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
                        AnimatedIcon(
                            icon: AnimatedIcons.search_ellipsis,
                            progress: progress),
                        Text('TextField in Dialog'),
                      ]),
                      content: TextField(
                        onChanged: (value) {
                          setState(() {
                            valueText = value;
                          });
                        },
                        controller: _textFieldController,
                        decoration:
                            InputDecoration(hintText: "Text Field in Dialog"),
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
