import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.images,
  }) : super(key: key);
  final String? text;
  final String? images;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Hijau.kan',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          Text(text ?? 'default'),
          SizedBox(height: 100),
          Image.asset(
            images ?? 'default',
            width: 300,
          )
        ],
      ),
    );
  }
}
