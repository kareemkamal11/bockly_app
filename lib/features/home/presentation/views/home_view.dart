import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const CustomAppBar(),
        // i need app bar without elevation and background to 
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const HomeViewBody(),
    );
  }
}
