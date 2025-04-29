class MenuItem {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

final List<MenuItem> menuItems = [
  MenuItem(
    name: 'Cheese Burger',
    description: '🧀 Cheesy Hettaven',
    price: 5.99,
    imageUrl:
        'https://images.unsplash.com/photo-1550547660-d9450f859349?auto=format&fit=crop&w=400&q=80',
  ),
  MenuItem(
    name: 'Pizza',
    description: '🧀 Cheesy Hettaven',
    price: 12.45,
    imageUrl:
        'https://images.unsplash.com/photo-1513104890138-7c749659a591?auto=format&fit=crop&w=400&q=80',
  ),
  MenuItem(
    name: 'Crispy Chicken',
    description: '🧀 Cheesy Hettaven',
    price: 8.50,
    imageUrl:
        'https://static01.nyt.com/images/2024/11/24/multimedia/Buttermilk-Fried-Chickenrex-vtlk/Buttermilk-Fried-Chickenrex-vtlk-superJumbo.jpg?quality=75&auto=webp',
  ),
  MenuItem(
    name: 'Fresh Salad',
    description: '🧀 Cheesy Hettaven',
    price: 5.99,
    imageUrl:
        'https://images.unsplash.com/photo-1568605114967-8130f3a36994?auto=format&fit=crop&w=400&q=80',
  ),
];
