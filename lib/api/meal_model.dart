class Meal {
  final String id;
  final String name;
  final String image;

  Meal({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['idMeal'] as String,
      name: json['strMeal'] as String,
      image: json['strMealThumb'] as String,
    );
  }
}
