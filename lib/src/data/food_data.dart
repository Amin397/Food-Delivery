class Food {
  final String id, name, imagePath, category;
  final double price, discount, rating;

  Food(this.id, this.name, this.imagePath, this.category, this.price,
      this.discount, this.rating);
}

final foods = [
  Food(
      "1", "Hot Coffee", "assets/images/breakfast.jpeg", "1", 22.0, 33.5, 99.0),
  Food(
      "2", "Grilled Chicken", "assets/images/lunch.jpeg", "2", 12.0, 34.5, 69.0),
  Food(
      "3", "Hot Coffee", "assets/images/supper_1.jpeg", "3", 25.0, 23.5, 100.0),
];
