import 'package:ecommerce_shop/screens/home_screen.dart';
import 'package:ecommerce_shop/utils/colors.dart';
import 'package:ecommerce_shop/utils/textstyle.dart';
import 'package:ecommerce_shop/widgets/image_list_view.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          // Image Transiion
          const Positioned(
            top: -10,
            left: -150,
            child: Row(
              children: [
                ImageListView(startIndex: 0),
                ImageListView(startIndex: 1),
                ImageListView(startIndex: 2),
              ],
            ),
          ),

          // Title
          Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: const Text(
              "MNMLAAN",
              style: AppTextStyles.displayLarge,
              textAlign: TextAlign.center,
            ),
          ),
          // Info Screen
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.white60,
                  Colors.white,
                  Colors.white
                ], begin: Alignment.topCenter, end: Alignment.center),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Appearance \n Shows Your Quality",
                    style: AppTextStyles.headlineLarge
                        .copyWith(color: kBackgroundColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Change The Quality Of Your \n Appearance with MNMLAAN",
                    style:
                        AppTextStyles.titleSmall.copyWith(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: buildIndicators(),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 20,
            left: 20,
            right: 30,
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kBackgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: const Text("Sign Up with Email"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> buildIndicators() {
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 8.0),
    duration: const Duration(microseconds: 150),
    height: 8.0,
    width: isActive ? 30.0 : 8.0,
    decoration: BoxDecoration(
        color: isActive ? kOrangeColor : Colors.grey,
        borderRadius: BorderRadius.circular(10)),
  );
}
