import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  final appBar = '#f28482';

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
