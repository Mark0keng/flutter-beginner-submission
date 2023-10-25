import 'package:dicoding_submission/models/Product.dart';
import 'package:dicoding_submission/screens/detail_item/components/body.dart';
import 'package:dicoding_submission/screens/detail_item/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailItemScreen extends StatelessWidget {
  final Product product;

  const DetailItemScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(product: product),
      body: Body(product: product),
    );
  }
}
