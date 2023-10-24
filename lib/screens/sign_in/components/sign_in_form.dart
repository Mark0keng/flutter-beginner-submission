import 'package:dicoding_submission/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: 50),
          emailFormField(),
          SizedBox(height: 30),
          passwordFormField(),
          SizedBox(height: 10),
          SizedBox(height: 30),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              Text('Remember me?'),
              Spacer(),
              Text(
                'Forgot Password?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // _formKey.currentState!.save();

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                }
              },
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                padding: EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              Text(
                'Register here',
                style: TextStyle(
                    color: Colors.green, decoration: TextDecoration.underline),
              )
            ],
          )
        ],
      ),
    );
  }

  TextFormField emailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          final regExEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
          if (value!.isEmpty) {
            return 'Please input your password!';
          }
          if (!regExEmail.hasMatch(value)) {
            return 'Your email is invalid!';
          }
          return null;
        },
        decoration: InputDecoration(
            label: Text('Email'),
            hintText: 'Input your email',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(
              Icons.email,
              color: Colors.green,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.green),
                gapPadding: 10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.green),
                gapPadding: 10),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.red),
                gapPadding: 10),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.red),
                gapPadding: 10)));
  }

  TextFormField passwordFormField() {
    return TextFormField(
        obscureText: true,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please input your password!';
          }
          return null;
        },
        decoration: InputDecoration(
            label: Text('Password'),
            hintText: 'Input your password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: Icon(
              Icons.lock,
              color: Colors.green,
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.green),
                gapPadding: 10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.green),
                gapPadding: 10),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.red),
                gapPadding: 10),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.red),
                gapPadding: 10)));
  }
}
