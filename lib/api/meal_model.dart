class Meal {
  final String id;
  final String name;
  final String image;
  final String location;

  Meal({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
  });

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['idMeal'] as String,
      name: json['strMeal'] as String,
      image: json['strMealThumb'] as String,
      location: json['strArea'] as String,
    );
  }
}
