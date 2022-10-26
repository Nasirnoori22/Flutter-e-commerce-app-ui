import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import '../main_screen.dart';
import 'components/my_orders.dart';

class CartMainScreen extends StatelessWidget {
  const CartMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Order',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    ButtonsTabBar(
                      borderWidth: 0.1,
                      buttonMargin: EdgeInsets.only(left: 15.0),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      height: MediaQuery.of(context).size.height * 0.07 - 25,
                      backgroundColor: Colors.black,
                      unselectedBackgroundColor: Colors.white,
                      unselectedLabelStyle: TextStyle(color: Colors.black54),
                      labelStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                      tabs: [
                        Tab(
                          text: "Ongoing",
                        ),
                        Tab(
                          text: "Complated",
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 300),
                            fadingDuration: const Duration(milliseconds: 500),
                            slidingCurve: Curves.easeIn,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 + 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.110),
                                    blurRadius: 10,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: MyordersWidgets(
                                image: 'assets/images/home/nike.png',
                                title: 'Nike',
                                quantity: '1'.toString(),
                                size: '30'.toString(),
                                new_color: Colors.black,
                                price: '30\$'.toString(),
                                subtitle: 'Nike New brand Sneakers',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 1000),
                            fadingDuration: const Duration(milliseconds: 500),
                            slidingCurve: Curves.bounceOut,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 + 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.110),
                                    blurRadius: 10,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: MyordersWidgets(
                                image: 'assets/images/home/order.jpeg',
                                title: 'Nike',
                                quantity: '1'.toString(),
                                size: '30'.toString(),
                                new_color: Colors.black,
                                price: '30\$'.toString(),
                                subtitle: 'Nike New brand Sneakers',
                              ),
                            ),
                          ),
                        ],
                      ),
                      //compelate section start from here

                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 300),
                            fadingDuration: const Duration(milliseconds: 500),
                            slidingCurve: Curves.easeIn,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 + 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.110),
                                    blurRadius: 10,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: MyordersWidgets(
                                image: 'assets/images/home/order1.jpeg',
                                title: 'Adidas',
                                quantity: '2'.toString(),
                                size: '40'.toString(),
                                new_color: Colors.black,
                                price: '100\$'.toString(),
                                subtitle: 'Adidas New brand dress',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 1000),
                            fadingDuration: const Duration(milliseconds: 500),
                            slidingCurve: Curves.easeIn,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 + 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.110),
                                    blurRadius: 10,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: MyordersWidgets(
                                image: 'assets/images/home/order2.png',
                                title: 'Adidas',
                                quantity: '1'.toString(),
                                size: '30'.toString(),
                                new_color: Colors.black,
                                price: '440\$'.toString(),
                                subtitle: 'Adidas New brand dress',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          DelayedDisplay(
                            delay: Duration(milliseconds: 1500),
                            fadingDuration: const Duration(milliseconds: 500),
                            slidingCurve: Curves.easeIn,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 + 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.110),
                                    blurRadius: 10,
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: MyordersWidgets(
                                image: 'assets/images/home/order3.png',
                                title: 'Adidas',
                                quantity: '1'.toString(),
                                size: '30'.toString(),
                                new_color: Colors.black,
                                price: '300\$'.toString(),
                                subtitle: 'Adidas New brand dress',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
