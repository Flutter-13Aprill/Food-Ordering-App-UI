import 'package:food_ordering_app/classes/cart_class.dart';
import 'package:food_ordering_app/classes/food_class.dart';

class User {
  List<Food> favorite = [];
  Cart cart = Cart();
  int cartNumber = 0;  

  List<Map<String, dynamic>> jsonData = [
    {
      "title": "Spaghetti Carbonara",
      "category": "Pasta",
      "typeOfCheesy": "Pecorino Romano",
      "imageUrl":
          "https://www.themealdb.com/images/media/meals/llcbn01574260722.jpg",
      "price": 42,
    },
    {
      "title": "Cheeseburger",
      "category": "Fast Food",
      "typeOfCheesy": "Cheddar",
      "imageUrl":
          "https://www.themealdb.com/images/media/meals/urzj1d1587670726.jpg",
      "price": 25,
    },
    {
      "title": "Chicken Parmesan",
      "category": "Chicken",
      "typeOfCheesy": "Mozzarella, Parmesan",
      "imageUrl":
          "https://www.themealdb.com/images/media/meals/qtuwxu1468233098.jpg",
      "price": 38,
    },
    {
      "title": "Cheeseburger",
      "category": "Fast Food",
      "typeOfCheesy": "Cheddar",
      "imageUrl":
          "https://www.themealdb.com/images/media/meals/sxysrt1468240488.jpg",
      "price": 25,
    },
    {
      "title": "Chicken Parmesan",
      "category": "Chicken",
      "typeOfCheesy": "Mozzarella, Parmesan",
      "imageUrl":
          "https://www.themealdb.com/images/media/meals/tyywsw1505930373.jpg",
      "price": 38,
    },
  ];
  addTOFavorite(Food food) {
    cartNumber++;
     favorite.add(food);
  }

  removeFromFavorite(Food food) {
        cartNumber--;
    favorite.remove(food);
  }

  toggleFavorite(Food food) {
    // displayFaforite();
        // print("${food.title}");
    //     // print("2");
    if (!favorite.contains(food)) {
      addTOFavorite(food);
              // print("3");

    } else {
              // print("4");

      removeFromFavorite(food);
    }
  }

  toggleCart(Food food) {
    cart.toggleCart(food);
  }

  displayFaforite() {
    // print("${favorite.length}  ");
    print("${favorite.length}");
  }
}
