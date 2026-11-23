import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_ecommerce_app/components/shoe_tiles.dart';
import 'package:sneaker_ecommerce_app/models/cart.dart';
import 'package:sneaker_ecommerce_app/models/shoe.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //add shoe to cart
    void addShoeToCart(Shoe shoe) {
      Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

      //notify to successfully added
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Successfully Added'),
          content: Text('Check your Cart'),
        ),
      );
    }

    ;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<Cart>(
        builder: (context, value, child) => Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.search, color: Colors.grey),
                ],
              ),
            ),

            //Massages
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Everyone Flies... some flys longer than others',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ),

            //Hot Picks Section
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Picks🔥',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            //Items Of list or Picks List Builder
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.shoeShop.length,
                itemBuilder: (context, index) {
                  //Create shoe object
                  //shoe list get a shoe
                  Shoe shoe = value.getShoeList()[index];

                  //return shoe
                  return ShoeTiles(
                    shoe: shoe,
                    onTap: () => addShoeToCart(shoe),
                  );
                },
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 45),
            //   child: Divider(color: Colors.white),
            // ),
            SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
