
import 'package:flutter/material.dart';

class LoadinIndicator extends StatelessWidget {
  const LoadinIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
    }
}