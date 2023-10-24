import 'package:dicoding_submission/screens/home/home_screen.dart';
import 'package:dicoding_submission/screens/sign_in/components/sign_in_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Please Sign In With Your Email and Password!",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SignInForm()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
