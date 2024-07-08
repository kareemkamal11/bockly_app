import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_book_image.dart';

class SimilarBooksList extends StatelessWidget {
  const SimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: SizedBox(
        height: Constants.maxHeight(context) * 0.16,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(),
            );
          },
        ),
      ),
    );
  }
}
