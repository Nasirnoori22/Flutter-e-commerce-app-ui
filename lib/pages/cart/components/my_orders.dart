import 'package:flutter/material.dart';

class MyordersWidgets extends StatelessWidget {
  final String image, title, quantity, size, price, subtitle;
  final Color new_color;
  const MyordersWidgets({
    Key? key,
    required this.image,
    required this.title,
    required this.quantity,
    required this.size,
    required this.price,
    required this.subtitle,
    required this.new_color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                image,
                height: 100,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    quantity,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3 + 15,
                  ),
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                size,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 20,
                height: 20,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: new_color),
              )
            ],
          ),
        )
      ],
    );
  }
}
