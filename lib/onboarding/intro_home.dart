import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class OnboardingHome extends StatelessWidget {
  const OnboardingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ImageSlideshow(children: [
          OnboardSlide(
            image: 'assets/images/onboarding/onboarding1.jpeg',
            title: '20% Discount\nNew Arrival Product',
            sub_title:
                'Publish up your selfies to make yourself\nmore beautiful with this app',
          ),
          OnboardSlide(
            image: 'assets/images/onboarding/onboarding2.jpg',
            title: 'Take Advantage\nOf The Offer',
            sub_title:
                'Publish up your selfies to make yourself\nmore beautiful with this app',
          ),
          OnboardSlide(
            image: 'assets/images/onboarding/onboarding3.jpeg',
            title: 'All Types Offers\nWithin Your Reach',
            sub_title:
                'Publish up your selfies to make yourself\nmore beautiful with this app',
          ),
        ]),
      ),
    );
  }
}

class OnboardSlide extends StatelessWidget {
  final image, title, sub_title;
  const OnboardSlide({
    Key? key,
    this.image,
    this.title,
    this.sub_title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: MediaQuery.of(context).size.height * 0.5 + 40,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                DelayedDisplay(
                  slidingCurve: Curves.linear,
                  delay: Duration(microseconds: 1000),
                  child: Text(
                    title,
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DelayedDisplay(
                  slidingCurve: Curves.linear,
                  delay: Duration(microseconds: 2000),
                  child: Text(
                    sub_title,
                    style: TextStyle(color: Colors.black54, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.9 + 30,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
