import 'package:ecommerce_shop/screens/category_display_screen.dart';
import 'package:ecommerce_shop/screens/product_display_screen.dart';
import 'package:ecommerce_shop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final pageController = PageController(initialPage: 0);

  final tabBarIcons = [
    FontAwesomeIcons.house,
    FontAwesomeIcons.compass,
    FontAwesomeIcons.cartShopping,
    FontAwesomeIcons.user
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom:
            false, //content of the stack will be visible even behind the navigation bar
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: const [
                ProductDisplayScreen(),
                CategoryDisplayScreen(),
              ],
            ),
            // Bottom Navigation Bar
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Container(
                alignment: Alignment.center,
                height: 70,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...tabBarIcons.map((icon) => IconButton(
                        onPressed: () {
                          icon == FontAwesomeIcons.house
                              ? pageController.jumpToPage(0)
                              : pageController.jumpToPage(1);
                        },
                        icon: Icon(
                          icon,
                          color: Colors.white60,
                          size: 22,
                        )))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
