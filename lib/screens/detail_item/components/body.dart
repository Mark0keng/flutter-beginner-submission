import 'package:dicoding_submission/models/Product.dart';
import 'package:dicoding_submission/screens/detail_item/components/custom_app_bar.dart';
import 'package:dicoding_submission/screens/detail_item/components/item_description.dart';
import 'package:dicoding_submission/screens/detail_item/components/price_counter.dart';
import 'package:dicoding_submission/screens/detail_item/components/rounded_rectangle.dart';
import 'package:dicoding_submission/screens/detail_item/components/item_image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(product: product),
        RoundedRectangle(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              ItemDescription(product: product),
              RoundedRectangle(
                color: Colors.white,
                child: Column(
                  children: [
                    PriceCounter(product: product),
                    RoundedRectangle(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Masukkan Keranjang'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                            padding: EdgeInsets.symmetric(vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
