import 'package:flutter/material.dart';
import 'package:kitchen_space_2/api/api_methods.dart';
import 'package:kitchen_space_2/api/meal_model.dart';

// ignore: must_be_immutable
class MealView extends StatelessWidget {
  MealView({Key? key}) : super(key: key);

  HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          child: FutureBuilder(
              future: httpService.getMeals(),
              builder:
                  (BuildContext context, AsyncSnapshot<List<Meal>> snapshot) {
                if (snapshot.hasData) {
                  List<Meal>? meals = snapshot.data;
                  return ListView.builder(
                      // scrollDirection: Axis.horizontal,
                      itemCount: meals!.length,
                      itemBuilder: (BuildContext context, index) => Card(
                            child: ListTile(
                              leading: const Icon(Icons.favorite_border),
                              title: Text(snapshot.data![index].name),
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
