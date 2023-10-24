import 'package:flutter/material.dart';

import '../../../models/Cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  cart.product.images,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                cart.product.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(text: 'Rp ${cart.product.price}'),
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.w400),
              )
            ],
          )
        ],
      ),
    );
  }
}
