import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:momen/constants/app_assets.dart';
import 'package:momen/functions/navigations.dart';
import 'package:momen/utiles/app_colors.dart';
import 'package:momen/features/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      if (!mounted) return;
      pushReplacement(context, const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenColor,
      body: Center(child: SvgPicture.asset(AppAssets.fullLogoSVG)),
    );
  }
}
