import 'package:flutter/material.dart';

class Profiledatawidget extends StatelessWidget {
  final String title;
  final Icon icon, profile_icon;
  const Profiledatawidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.profile_icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 227, 224, 224)),
                height: 50,
                width: 50,
                child: icon,
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.6 + 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    IconButton(onPressed: () {}, icon: profile_icon)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
