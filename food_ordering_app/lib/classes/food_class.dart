class Food {
  String title;
  String category;
  String typeOfCheesy;
  String imageUrl;
  double price;
  
  Food({
     required this.title, 
    required this.category,
    required this.typeOfCheesy,
    required this.imageUrl,
    required this.price,
  });
  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(
      title: json["title"],
      category: json["category"],
      typeOfCheesy: json["typeOfCheesy"],
      price: (json["price"] as num).toDouble(),
      imageUrl: json["imageUrl"],
    );
  }
  
}





