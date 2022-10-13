import 'package:e_commerce_app/pages/singUp/components/signUp_form.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Image.asset('assets/images/logo/my_logo.jpeg'),
                ),
              ),
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Create an new account',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(
                height: 50,
              ),
              SignUpForm()
            ],
          ),
        ),
      ),
    );
  }
}
