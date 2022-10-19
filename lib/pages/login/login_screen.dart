import 'package:flutter/material.dart';

import 'components/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Image.asset('assets/images/logo/my_logo.png'),
                ),
              ),
              Text(
                'Welcome!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'please login or sign up to continue our app',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(
                height: 50,
              ),
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
