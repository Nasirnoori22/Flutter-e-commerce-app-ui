import 'package:e_commerce_app/pages/login/components/login_form.dart';
import 'package:e_commerce_app/pages/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'components/profileDatawidget.dart';

class PersonnelProfile extends StatelessWidget {
  const PersonnelProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1 + 50,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1 + 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('assets/images/profile/profile.jpeg'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    'Nasir Ahmad Noori',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'nasirnoori231@gmail.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        right: MediaQuery.of(context).size.height * 0.3 + 3),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4 - 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 211, 207, 207))),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Profiledatawidget(
                            title: 'Personnel Details',
                            icon: Icon(Icons.language, size: 25),
                            profile_icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                          Profiledatawidget(
                            title: 'My Order',
                            icon: Icon(
                              Icons.notifications,
                              size: 25,
                            ),
                            profile_icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                          Profiledatawidget(
                            title: 'Dark Mode',
                            icon: Icon(
                              Icons.dark_mode,
                              size: 25,
                            ),
                            profile_icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                          Profiledatawidget(
                            title: 'Help Center',
                            icon: Icon(
                              Icons.help_center,
                              size: 25,
                            ),
                            profile_icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(width: 1),
                    ),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(color: Colors.blue),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                      label: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          'Log Out',
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        ),
                      ),
                      onPressed: () => {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                          (Route<dynamic> route) => false,
                        )
                      },
                      icon: Icon(Icons.logout, color: Colors.white),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
