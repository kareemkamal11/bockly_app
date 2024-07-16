// ignore_for_file: use_build_context_synchronously

import 'package:bookly_app/features/book_details/presentation/views/widgets/custom_book_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsButtons extends StatelessWidget {
  const BookDetailsButtons({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBookButton(
            text: 'Free',
            color: Colors.white,
            textColor: Colors.black,
            onPressed: () async {
              await clickBook(book.saleInfo.buyLink ?? '', context);
            },
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            isShadow: false,
          ),
          CustomBookButton(
            text: 'preview',
            color: const Color(0xFFEF8262),
            textColor: Colors.white,
            onPressed: () async {
              await clickBook(book.volumeInfo.previewLink ?? '', context);
            },
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

  Future<void> clickBook(String link, BuildContext context) async {
    Uri url = Uri.parse(link);

    if (await canLaunchUrl(url) || link.isNotEmpty) {
      await launchUrl(url);
    } else {
      // show error message on Dialog
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Error'),
                content: const Text(
                    'Could not launch the link, please try again later'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'))
                ],
              ));
    }
  }
}
