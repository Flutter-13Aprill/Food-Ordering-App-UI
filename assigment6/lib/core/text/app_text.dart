class AppText {
  static const String appBarText = "Popular Menu";
  static const String hintSearch = "Search..";

  static const List<String> chipList = ['Europian', '10m', 'Burgers'];

  //menu Component
  static const Map<String, Map<String, String>> menu = {
    'Cheese Burger': {
      //key1 =>
      'price': '5.99', //key2 => value2
      'image': 'assets/images/CheeseBurger.png', //value1
    },
    'Pizza': {'price': "12.45", 'image': 'assets/images/Pizza.png'},
    'Fried Chicken': {
      'price': '5.99',
      'image': 'assets/images/FriedChicken.png',
    },
    'Salad': {'price': '5.99', 'image': 'assets/images/Salad.png'},
  };

  static const String subtext = "Cheese Hettaven";
  static const String cart = "ADD TO CART";
}
