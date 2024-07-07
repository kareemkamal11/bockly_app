import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Constants.kPrimaryColor,
        textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
        
      ),
      debugShowCheckedModeBanner: false,
      title: 'Bookly',
      home: const SplashView(),
    );
  }
}
