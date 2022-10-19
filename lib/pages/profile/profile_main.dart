import 'package:e_commerce_app/pages/home_page.dart';
import 'package:e_commerce_app/pages/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/profileDatawidget.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  icon: Icon(Icons.arrow_back)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1 + 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.110),
                        blurRadius: 10,
                        offset:
                            const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Image.asset(
                                'assets/images/profile/profile.jpeg')),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Nasir Ahmad',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Noori222@gmail.com',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4 + 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 211, 207, 207))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Profiledatawidget(
                        title: 'Personnel Details',
                        icon: Icon(Icons.person, size: 40),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Order',
                        icon: Icon(Icons.business_center_rounded),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Favourite',
                        icon: Icon(Icons.favorite),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'Shopping Address',
                        icon: Icon(Icons.airport_shuttle),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Card',
                        icon: Icon(Icons.business),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Card',
                        icon: Icon(Icons.business),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4 + 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 211, 207, 207))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Profiledatawidget(
                        title: 'FAQs',
                        icon: Icon(Icons.question_mark, size: 40),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'Privacy Policy',
                        icon: Icon(Icons.privacy_tip),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Favourite',
                        icon: Icon(Icons.favorite),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'Shopping Address',
                        icon: Icon(Icons.airport_shuttle),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Card',
                        icon: Icon(Icons.business),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                      Profiledatawidget(
                        title: 'My Card',
                        icon: Icon(Icons.business),
                        profile_icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
