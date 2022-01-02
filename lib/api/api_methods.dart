import 'dart:convert';
import 'package:http/http.dart';
import 'package:kitchen_space_2/api/meal_model.dart';

class HttpService {
  final String url =
      "https://www.themealdb.com/api/json/v1/1/search.php?s=Chicken";

  Future<List<Meal>> getMeals() async {
    Response res = await get(Uri.parse(url));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body)['meals'];

      List<Meal> meals = body
          .map(
            (dynamic item) => Meal.fromJson(item),
          )
          .toList();

      return meals;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
