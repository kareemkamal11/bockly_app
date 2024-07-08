import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookButton extends StatelessWidget {
  const CustomBookButton({
    super.key,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onPressed,
    required this.borderRadius,
    required this.isShadow,
  });

  final String text;
  final Color color;
  final Color textColor;
  final Function() onPressed;
  final BorderRadius borderRadius;
  final bool isShadow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      splashColor: Colors.deepPurple,
      child: Container(
          width: 150,
          height: 48,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            ),
            shadows: isShadow
                ? const [
                    BoxShadow(
                      color: Color(0x2C755DFF),
                      blurRadius: 12,
                      offset: Offset(0, 12),
                      spreadRadius: 0,
                    )
                  ]
                : null,
          ),
          child: Center(
            child: Text(
              text,
              style: Styles.textSmall.copyWith(
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
    );
  }
}
