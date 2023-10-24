import 'package:dicoding_submission/screens/cart/cart_screen.dart';
import 'package:dicoding_submission/screens/home/components/icon_counter.dart';
import 'package:dicoding_submission/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconCounter(
            countItems: 3,
            icon: Icon(Icons.shopping_basket_outlined),
            press: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) {
                    return CartScreen();
                  },
                ),
              );
            },
          ),
          IconCounter(
            countItems: 0,
            icon: Icon(Icons.notifications_none_outlined),
            press: () {},
          ),
        ],
      ),
    );
  }
}
