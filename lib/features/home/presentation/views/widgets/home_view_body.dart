import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text('Best Seller', style: Styles.textMedium),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: BestSellerList(),
            ),
          ),
        ],
      ),
    );
  }
}

