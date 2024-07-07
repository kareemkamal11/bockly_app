import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsCore.logo,
            width: 20,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              // double a = Constants.maxHeight(context);
              // print(a);
              // double b = 375 / 134;
              // print(b);
              // print(a / b);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
          ),
        ],
      ),
    );
  }
}
