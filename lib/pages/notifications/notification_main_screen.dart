import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

import '../../model/notifications_model.dart';
import '../main_screen.dart';

class NotificationsMainScreen extends StatefulWidget {
  const NotificationsMainScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsMainScreen> createState() =>
      _NotificationsMainScreenState();
}

final List<NotificationModel> notification = [
  NotificationModel(
      image: "assets/images/profile/profile.jpeg",
      name: "Nasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "20m ago"),
  NotificationModel(
      image: "assets/images/profile/shoaib.jpeg",
      name: "Shoaib Ghyasi",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "50m ago"),
  NotificationModel(
      image: "assets/images/profile/yasir.jpeg",
      name: "Yasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "1hr ago"),
  NotificationModel(
      image: "assets/images/profile/anoshka.png",
      name: "Yasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "3hr ago"),
  NotificationModel(
      image: "assets/images/profile/profile.jpeg",
      name: "Nasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "20m ago"),
  NotificationModel(
      image: "assets/images/profile/shoaib.jpeg",
      name: "Shoaib Ghyasi",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "50m ago"),
  NotificationModel(
      image: "assets/images/profile/yasir.jpeg",
      name: "Yasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "1hr ago"),
  NotificationModel(
      image: "assets/images/profile/anoshka.png",
      name: "Yasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "3hr ago"),
  NotificationModel(
      image: "assets/images/profile/profile.jpeg",
      name: "Nasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "20m ago"),
  NotificationModel(
      image: "assets/images/profile/shoaib.jpeg",
      name: "Shoaib Ghyasi",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "50m ago"),
  NotificationModel(
      image: "assets/images/profile/yasir.jpeg",
      name: "Yasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "1hr ago"),
  NotificationModel(
      image: "assets/images/profile/anoshka.png",
      name: "Yasir Ahmad",
      pragraph: "its a long established face\nthat a reader will be distracted",
      dateTime: "3hr ago"),
];

class _NotificationsMainScreenState extends State<NotificationsMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 6,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainScreen()),
                        (Route<dynamic> route) => false,
                      );
                    },
                    icon: Icon(
                      Icons.more_vert,
                      color: Color.fromARGB(
                        255,
                        100,
                        99,
                        99,
                      ),
                      size: 25,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // leading: Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 40,
          //     width: 40,
          //     decoration: BoxDecoration(
          //         color: Colors.black,
          //         borderRadius: BorderRadius.all(Radius.circular(30))),
          //     child: IconButton(
          //         onPressed: () {
          //           Navigator.pushAndRemoveUntil(
          //             context,
          //             MaterialPageRoute(builder: (context) => MainScreen()),
          //             (Route<dynamic> route) => false,
          //           );
          //         },
          //         icon: Icon(Icons.arrow_back)),
          //   ),
          // ),
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       height: 40,
          //       width: 40,
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(30),
          //         ),
          //         boxShadow: [
          //           BoxShadow(
          //             color: Colors.grey.withOpacity(0.5),
          //             spreadRadius: 1,
          //             blurRadius: 6,
          //             offset: Offset(0, 3), // changes position of shadow
          //           ),
          //         ],
          //       ),
          //       child: IconButton(
          //         onPressed: () {
          //           Navigator.pushAndRemoveUntil(
          //             context,
          //             MaterialPageRoute(builder: (context) => MainScreen()),
          //             (Route<dynamic> route) => false,
          //           );
          //         },
          //         icon: Icon(
          //           Icons.more_vert,
          //           color: Color.fromARGB(
          //             255,
          //             100,
          //             99,
          //             99,
          //           ),
          //           size: 25,
          //         ),
          //       ),
          //     ),
          //   ),
          // ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: notification.length,
                  itemBuilder: (context, index) {
                    final item = notification[index];
                    return Dismissible(
                      // Each Dismissible must contain a Key. Keys allow Flutter to
                      // uniquely identify widgets.
                      key: Key(notification[index].image!),
                      // Provide a function that tells the app
                      // what to do after an item has been swiped away.
                      onDismissed: (direction) {
                        // Remove the item from the data source.
                        setState(() {
                          notification.removeAt(index);
                        });

                        // Then show a snackbar.
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Item Deleted')));
                      },
                      // Show a red background as the item is swiped away.
                      background: Container(
                        color: Colors.black,
                        child: Container(
                          height: 30,
                          child: Hero(
                            tag: "SignUp btn",
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: MediaQuery.of(context).size.width *
                                        0.4),
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            DelayedDisplay(
                              delay: Duration(milliseconds: 500),
                              fadingDuration: const Duration(milliseconds: 500),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1 +
                                        30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          child: Image.asset(
                                            notification[index].image!,
                                          )),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          notification[index].name!,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          notification[index].pragraph!,
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black54),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.01 +
                                              5,
                                        ),
                                        Text(
                                          notification[index].dateTime!,
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              color: Colors.black38,
                              height: 0.1,
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
