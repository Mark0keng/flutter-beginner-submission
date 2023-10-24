import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class PriceCounter extends StatefulWidget {
  const PriceCounter({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<PriceCounter> createState() => _PriceCounterState();
}

class _PriceCounterState extends State<PriceCounter> {
  int countItem = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            'Rp ${widget.product.price * countItem}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.green,
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            foregroundColor: Colors.green,
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (countItem > 1) {
                    countItem--;
                  }
                });
              },
              icon: Icon(Icons.remove),
            ),
          ),
          SizedBox(width: 20),
          Text(
            '$countItem',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(width: 20),
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            foregroundColor: Colors.green,
            child: IconButton(
              onPressed: () {
                setState(() {
                  countItem++;
                });
              },
              icon: Icon(Icons.add),
            ),
          )
        ],
      ),
    );
  }
}
