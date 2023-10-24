import 'package:dicoding_submission/screens/sign_in/sign_in_screen.dart';
import 'package:dicoding_submission/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {"text": "Welcome to Hijau.kan!", "images": "images/splash_1.png"},
    {
      "text": "Ready to Help Green Up Your Home!",
      "images": "images/splash_2.png",
    },
    {
      "text": "We Provide Plant Services & Collections!",
      "images": "images/splash_3.png",
    },
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]['text'],
                    images: splashData[index]['images']),
              )),
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(splashData.length,
                        (index) => SplashIndex(index: index))),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) {
                            return SignInScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        textStyle: TextStyle(fontSize: 24)),
                    child: Text('Continue'),
                  ),
                ),
              ],
            ),
          ) // Expanded(child: child)
        ],
      ),
    );
  }

  Container SplashIndex({required int index}) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.green : Colors.grey,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
