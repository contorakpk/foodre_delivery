class Food {
  String name;
  String description;
  int price;
  int weight;

  Food.fromMap(Map<String, dynamic> data) {
    name = data['name'];
    description = data['description'];
    price = data['price'];
    weight = data['weight'];
  }
}
