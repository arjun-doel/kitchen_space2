import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kitchen_space_2/api/api_methods.dart';
import 'package:kitchen_space_2/api/meal_model.dart';

// ignore: must_be_immutable
class MealView extends StatelessWidget {
  MealView({Key? key}) : super(key: key);

  HttpService httpService = HttpService();

  String cardBg = '#ffe5d9';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          height: 550,
          child: FutureBuilder(
              future: httpService.getMeals(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Meal>> snapshot) {
                if (snapshot.hasData) {
                  List<Meal>? meals = snapshot.data;
                  return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: meals!.length,
                      itemBuilder: (BuildContext context, index) => Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            margin: const EdgeInsets.all(10),
                            color: HexColor(cardBg),
                            child: SizedBox(
                              width: 300,
                              child: Column(
                                children: [
                                  SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Image.network(
                                          snapshot.data![index].image,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              }),
        ),
      ),
    );
  }
}
