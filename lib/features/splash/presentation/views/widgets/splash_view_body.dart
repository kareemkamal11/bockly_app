// ignore_for_file: use_build_context_synchronously

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    navigateToHome();

    // config api service 
    
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(AssetsCore.logo, width: 350),
        const SizedBox(height: 30),
        AnimatedBuilder(
            animation: slideAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slideAnimation,
                child: const Text(
                  'Read Free Books',
                  textAlign: TextAlign.center,
                ),
              );
            }),
      ],
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).go(AppRouter.kHomeViewRoute);
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
    slideAnimation.addListener(
      () => setState(() {}),
    );
  }
}
