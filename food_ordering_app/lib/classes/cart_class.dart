import 'package:food_ordering_app/classes/food_class.dart';

class Cart{
  double total=0;
  List<Food>cart=[];
  getList(){
    return cart;
  }
  addToCart(Food food){
    cart.add(food);
    displayCart();
  }
  removeFromCart(Food food){
    cart.remove(food);
  }
  toggleCart(Food food){
    if(cart.contains(food)){
      removeFromCart(food);
    }else{
      addToCart(food);
    }
  }
  displayCart( ){
    print("${cart[0].title}  ");
  }
}