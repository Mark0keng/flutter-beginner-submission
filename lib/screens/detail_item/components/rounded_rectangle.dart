import 'package:dicoding_submission/screens/detail_item/components/item_description.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class RoundedRectangle extends StatelessWidget {
  const RoundedRectangle({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}
