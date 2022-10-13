import 'package:delayed_display/delayed_display.dart';
import 'package:e_commerce_app/pages/login/login_screen.dart';
import 'package:e_commerce_app/pages/singUp/signUp_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  bool isSelected = false;
  Color bgColor = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logo/start.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 90,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2 + 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: DelayedDisplay(
                    slidingCurve: Curves.linear,
                    delay: Duration(microseconds: 600),
                    child: Image.asset(
                      'assets/images/logo/my_logo.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: DelayedDisplay(
                    slidingCurve: Curves.linear,
                    delay: Duration(microseconds: 800),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isSelected ? Colors.white : Colors.transparent,
                          border: Border.all(
                              color: isSelected ? Colors.black : Colors.white)),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Hero(
                        tag: "Sign btn",
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                isSelected ? Colors.white : Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30), // <-- Radius
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            "Sign",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    isSelected ? Colors.black : Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // child: Icon(
                  //   isSelected ? Icons.favorite : Icons.favorite_border,
                  //   size: 40,
                  //   color: isSelected ? Colors.red : Colors.black,
                  // ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: DelayedDisplay(
                    slidingCurve: Curves.linear,
                    delay: Duration(microseconds: 1000),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: isSelected ? Colors.white : Colors.transparent,
                          border: Border.all(
                              color: isSelected ? Colors.black : Colors.white)),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Hero(
                        tag: "SignUp btn",
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:
                                isSelected ? Colors.white : Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30), // <-- Radius
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SingUpScreen()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color:
                                    isSelected ? Colors.black : Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // child: Icon(
                  //   isSelected ? Icons.favorite : Icons.favorite_border,
                  //   size: 40,
                  //   color: isSelected ? Colors.red : Colors.black,
                  // ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
