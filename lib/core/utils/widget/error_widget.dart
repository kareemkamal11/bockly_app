import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class WidgetError extends StatelessWidget {
  const WidgetError({super.key, required this.messageError});

  final String messageError;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        messageError,
        style: Styles.textMedium,
      ),
    );
  }
}
