import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
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
    );
  }
}
