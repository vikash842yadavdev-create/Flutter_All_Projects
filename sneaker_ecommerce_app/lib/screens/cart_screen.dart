import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_ecommerce_app/components/cart_item.dart';
import 'package:sneaker_ecommerce_app/models/cart.dart';
import 'package:sneaker_ecommerce_app/models/shoe.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getCartList().length,
                itemBuilder: (context, index) {
                  //Individual shoe
                  Shoe indiviualshoe = value.getCartList()[index];

                  return CartItem(shoe: indiviualshoe);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
