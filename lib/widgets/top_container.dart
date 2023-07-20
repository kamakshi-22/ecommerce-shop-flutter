import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shop/utils/colors.dart';
import 'package:ecommerce_shop/utils/textstyle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopContainer extends StatelessWidget {
  final String title;
  final String searchBarTitle;
  const TopContainer(
      {super.key, required this.title, required this.searchBarTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style:
                  AppTextStyles.displayMedium.copyWith(color: kBackgroundColor),
            ),
            const Spacer(),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.4),
              ),
              child: Stack(
                children: [
                  const Icon(
                    FontAwesomeIcons.bell,
                    color: Colors.black87,
                    size: 20,
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: kOrangeColor),
                      ))
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: CachedNetworkImage(
                imageUrl:
                    "https://plus.unsplash.com/premium_photo-1664868840007-c0644c70796b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wxMTgwOTN8MXwxfHNlYXJjaHwxfHxmYXNoaW9ufGVufDB8fHx8MTY4OTg0NTUzMXww&ixlib=rb-4.0.3&q=80&w=1080",
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),

        // Search Bar
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(30.0)),
          margin: const EdgeInsets.symmetric(vertical: 30.0),
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                searchBarTitle,
                style: AppTextStyles.titleMedium,
              )
            ],
          ),
        )
      ],
    );
  }
}
