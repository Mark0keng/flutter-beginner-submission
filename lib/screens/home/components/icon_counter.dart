import 'package:flutter/material.dart';

class IconCounter extends StatelessWidget {
  const IconCounter({
    Key? key,
    required this.icon,
    required this.countItems,
    required this.press,
  }) : super(key: key);

  final Icon icon;
  final int countItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(color: Colors.grey[350], shape: BoxShape.circle),
            child: icon,
          ),
          if (countItems != 0)
            Positioned(
              right: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1.5, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    '$countItems',
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
