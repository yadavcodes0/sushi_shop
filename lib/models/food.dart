class Food {
  String name;
  String price;
  String imagePath;
  String rating;

  Food({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.rating,
  });

  String get _name => name;
  String get _price => price;
  String get _imagePath => imagePath;
  String get _rating => rating;
}

// food menu
List foodMenu = [
  // salmon sushi
  Food(
    name: "Salmon Sushi",
    price: "21.0",
    imagePath: "assets/salmon_sushi.png",
    rating: "4.9",
  ),

  // tuna
  Food(
    name: "Tuna",
    price: "24.0",
    imagePath: "assets/tuna.png",
    rating: "4.5",
  )
];
