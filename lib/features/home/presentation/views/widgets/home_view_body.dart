import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(height: 50),
            Text('Best Seller', style: Styles.titleMedium),
            SizedBox(height: 20),
            BeseSellerList(),
          ],
        ),
      ),
    );
  }
}

class BeseSellerList extends StatelessWidget {
  const BeseSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        children: [
          AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(AssetsCore.test),
                fit: BoxFit.fill,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1A424242),
                  blurRadius: 24.50,
                ),
              ],
            ),
          ),
        ),
          Column()
        ],
      ),
    );
  }
}
