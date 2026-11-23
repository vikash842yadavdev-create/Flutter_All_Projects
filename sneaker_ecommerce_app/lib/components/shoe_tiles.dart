import 'package:flutter/material.dart';
import 'package:sneaker_ecommerce_app/models/shoe.dart';

class ShoeTiles extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const ShoeTiles({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Shoe Pick
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 200, // 👈 control image size
              width: double.infinity,
              child: Image.asset(shoe.imagePath, fit: BoxFit.cover),
            ),
          ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe Name
                    Text(shoe.name, style: TextStyle(fontSize: 18)),

                    SizedBox(height: 5),

                    //Price
                    Text(
                      '\$' + shoe.price.toString(),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              //Button add cart
              InkWell(
                onTap: onTap,
                child: Container(
                  padding: EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      topLeft: Radius.circular(12),
                    ),
                  ),

                  child: Icon(Icons.add, color: Colors.grey[100]),
                ),
              ),
            ],
          ),

          //button to add cart
        ],
      ),
    );
  }
}
