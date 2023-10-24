import 'package:dicoding_submission/models/Product.dart';
import 'package:dicoding_submission/screens/cart/components/cart_item_card.dart';
import 'package:flutter/material.dart';

import '../../../models/Cart.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: demoCarts.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.red.shade200),
              child: Row(
                children: [
                  Spacer(),
                  Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            child: CartItemCard(cart: demoCarts[index]),
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
          ),
        );
      },
    );
  }
}
