import 'package:e_commerce_app/pages/singUp/components/start_shopping.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onSaved: (username) {},
          decoration: InputDecoration(
            isDense: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: "Username",
            prefixIcon: Icon(Icons.person, color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          onSaved: (email) {},
          decoration: InputDecoration(
            isDense: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: "Username",
            prefixIcon: Icon(Icons.email, color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        TextFormField(
          cursorColor: Colors.black,
          textInputAction: TextInputAction.done,
          obscureText: true,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: "Your password",
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        TextFormField(
          cursorColor: Colors.black,
          textInputAction: TextInputAction.done,
          obscureText: true,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black, width: 1.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: "Confirm password",
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Hero(
            tag: "SignUp btn",
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // <-- Radius
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => StartShopping()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Text(
                "Sign Up".toUpperCase(),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
