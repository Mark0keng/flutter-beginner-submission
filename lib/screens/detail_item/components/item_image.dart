import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 380,
      child: AspectRatio(
        aspectRatio: 1,
        child: Image.asset(
          product.images,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
