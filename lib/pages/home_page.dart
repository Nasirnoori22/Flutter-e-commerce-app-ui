import 'package:animations/animations.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:e_commerce_app/pages/components/search_filter.dart';
import 'package:e_commerce_app/pages/main_screen.dart';
import 'package:e_commerce_app/pages/profile/personnel_profile.dart';
import 'package:e_commerce_app/pages/profile/profile_main.dart';
import 'package:e_commerce_app/widgets/dress_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../model/dresse_model.dart';
import 'dress_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static List<Dress> dress_Search_list = [
    Dress(
      image: "assets/images/home/product2.jpg",
      title: "Roller Rabbit",
      sub_title: 'Vando Odelle dress',
      price: "\$190.00",
    ),
    Dress(
      image: "assets/images/home/product8.jpeg",
      title: "Nike Dress",
      sub_title: 'Vando Odelle dress',
      price: "\$190.00",
    ),
    Dress(
      image: "assets/images/home/product4.jpeg",
      title: "Louis Vuitton",
      sub_title: 'Vando Odelle dress',
      price: "\$190.00",
    ),
    Dress(
      image: "assets/images/home/product5.jpeg",
      title: "Chanel Dress",
      sub_title: 'Vando Odelle dress',
      price: "\$190.00",
    ),
    Dress(
      image: "assets/images/home/product6.jpeg",
      title: "GUCCI Dress",
      sub_title: 'Vando Odelle dress',
      price: "\$190.00",
    ),
    Dress(
      image: "assets/images/home/product7.jpeg",
      title: "Hermès dress",
      sub_title: 'Vando Odelle dress',
      price: "\$190.00",
    ),
  ];

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  List<Dress> display_list = List.from(dress_Search_list);
  void updateList(String value) {
    setState(() {
      display_list = _HomePageState.dress_Search_list
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            snap: _snap,
            floating: _floating,
            expandedHeight: MediaQuery.of(context).size.height * 0.2 + 20,
            title: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/icons/home.png',
                        color: Colors.white,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersonnelProfile()),
                          (Route<dynamic> route) => true,
                        );
                      },
                      icon: Image.asset(
                        'assets/images/icons/avatar.png',
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottom: AppBar(
                elevation: 0,
                toolbarHeight: 60,
                backgroundColor: Colors.white,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Container(
                            height: 50,
                            child: TextField(
                              onChanged: (value) => updateList(value),
                              cursorColor: Colors.grey,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade300,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                  prefixIcon: Container(
                                    padding: EdgeInsets.all(15),
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.grey,
                                    ),
                                    width: 18,
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: IconButton(
                          onPressed: () {
                            showMaterialModalBottomSheet(
                              duration: Duration(milliseconds: 500),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                              ),
                              context: context,
                              builder: (context) => SingleChildScrollView(
                                controller: ModalScrollController.of(context),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(50),
                                        topRight: Radius.circular(50)),
                                    color: Colors.white,
                                  ),
                                  height:
                                      MediaQuery.of(context).size.height * 0.7,
                                  child: SearchFilter(),
                                ),
                              ),
                            );
                          },
                          icon: Image.asset(
                            'assets/images/icons/filter-icon.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          const SliverToBoxAdapter(),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                  child: OpenContainer(
                      transitionDuration: const Duration(milliseconds: 500),
                      transitionType: ContainerTransitionType.fadeThrough,
                      closedBuilder: ((context, action) {
                        return Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          display_list[index].image!,
                                          fit: BoxFit.cover,
                                          height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3 -
                                              50,
                                          width:
                                              MediaQuery.of(context).size.width,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 15,
                                      right: 15,
                                      child: Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 20,
                                            )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                display_list[index].title!,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                display_list[index].sub_title!,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey.shade700),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                display_list[index].price!,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        );
                      }),
                      openBuilder: (context, action) {
                        return Stack(
                          children: <Widget>[
                            Image.asset(
                              display_list[index].image!,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            Scaffold(
                              appBar: AppBar(),
                            )
                          ],
                        );
                      }),
                );
              },
              childCount: display_list.length,
            ),
          )
        ],
      ),
    );
  }
}
