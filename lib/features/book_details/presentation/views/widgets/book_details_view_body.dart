import 'package:flutter/material.dart';

import 'custom_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomDetailsAppBar(),
      ],
    );
  }
}

