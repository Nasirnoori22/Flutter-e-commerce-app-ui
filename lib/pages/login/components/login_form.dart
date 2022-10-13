import 'package:e_commerce_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();

  void _validate() {
    _form.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
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
            hintText: "Your email",
            prefixIcon: Icon(Icons.person, color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
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
          height: MediaQuery.of(context).size.height * 0.06,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.9,
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
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false,
              );
            },
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Or'),
        SizedBox(
          height: 10,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.9,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 45, 96, 184),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30), // <-- Radius
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(Icons.facebook),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Text(
                    'Continue With Facebook',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
