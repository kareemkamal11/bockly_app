import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_book_button.dart';
import 'package:flutter/material.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBookButton(
            text: '19.99€',
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () {},
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            isShadow: false,
          ),
          CustomBookButton(
            text: 'Free preview',
            color: const Color(0xFFEF8262),
            textColor: Colors.white,
            onPressed: () {},
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            isShadow: true,
          )
        ],
      ),
    );
  }
}
