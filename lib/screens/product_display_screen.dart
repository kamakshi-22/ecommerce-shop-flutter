import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_shop/data/data.dart';
import 'package:ecommerce_shop/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductDisplayScreen extends StatelessWidget {
  const ProductDisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
      child: Column(
        children: [
          TopContainer(title: "MNMLAAN", searchBarTitle: "Search Product"),

          // Products View
          Container(
              height: MediaQuery.of(context).size.height,
              child: MasonryGridView.builder(
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        imageUrl: products[index].productImageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }

  /* MasonryGridView.count(
              crossAxisSpacing: 15,
              crossAxisCount: 2,
              itemCount: products.length,
              itemBuilder: ((context, index) {
                return singleItemWidget(products[index],
                    index == products.length - 1 ? true : false);
              })) */

  Widget singleItemWidget(Product product, bool lastItem) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: Colors.red,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: CachedNetworkImage(
                      imageUrl: product.productImageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(product.productName),
                  Text(product.currentPrice)
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
