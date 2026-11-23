import 'package:flutter/material.dart';
import 'package:sneaker_ecommerce_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //List of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
      description:
          'Iconic low-top basketball shoe with crisp leather and comfortable cushioning',
      imagePath: 'assets/images/Air_jordan_1.jpg',
      name: 'Air Force 1',
      price: 10795,
    ),
    Shoe(
      description:
          'Popular retro-styled comfortable shoe for everyday wear and walking',
      imagePath: 'assets/images/Nike_Air_Jordan_1.jpg',
      name: 'Zoom Vomero 5',
      price: 14995,
    ),
    Shoe(
      description:
          'Versatile, iconic sneaker style suitable for daily casual wear',
      imagePath: 'assets/images/Nike_Air_Max_95_Mystic_Red.jpg',
      name: 'Dunk Low',
      price: 15267,
    ),
    Shoe(
      description:
          'Classic, comfortable trainers with visible air cushioning for style',
      imagePath: 'assets/images/Nike_Air_Zoom.jpg',
      name: 'Air Max 90',
      price: 10233,
    ),
    Shoe(
      description:
          'Affordable basketball shoes designed for high performance and court speed',
      imagePath: 'assets/images/Nike_Dunk_Retro_Low.jpg',
      name: 'Giannis Immortality 4',
      price: 12345,
    ),
    Shoe(
      description:
          'Premium, stable footwear specialized for intense, high-intensity workouts.',
      imagePath: 'assets/images/Air_jordan_1.jpg',
      name: 'Metcon 10',
      price: 12334,
    ),
  ];

  //List of item in user cart
  List<Shoe> usercart = [];

  //get List of shoes for sale
  List<Shoe> getShoeList() => shoeShop;

  //get cart
  List<Shoe> getCartList() => usercart;

  //add item to cart

  List<Shoe>? addItemToCart(Shoe shoe) {
    usercart.add(shoe);
    notifyListeners();
  }

  //remove item form cart

  List<Shoe>? removeItemToCart(Shoe shoe) {
    usercart.remove(shoe);
    notifyListeners();
  }
}


/* 
Nike Dunk Low (₹10,795): Versatile, iconic sneaker style suitable for daily casual wear.
Nike Zoom Vomero 5 (₹14,995): Popular retro-styled comfortable shoe for everyday wear and walking.
Nike Air Force 1 '07 (₹11,895): Iconic leather sneaker for timeless, durable streetwear and fashion.
Nike Air Max 90 (₹10,795): Classic, comfortable trainers with visible air cushioning for style.
Nike Giannis Immortality 4 (₹7,095): Affordable basketball shoes designed for high performance and court speed.
Nike Metcon 10 (₹13,995): Premium, stable footwear specialized for intense, high-intensity workouts. 


 */