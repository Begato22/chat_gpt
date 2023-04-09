import 'dart:async';

import 'package:chat_gpt/config/themes/app_system_overlay.dart';
import 'package:chat_gpt/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  void _getStated() {
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  void _startDelay() {
    _timer = Timer(const Duration(milliseconds: 4000), () {
      _getStated();
    });
  }

  @override
  void initState() {
    super.initState();
    AppSystemUiOverlay.splashSystem();
    _startDelay();
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: const Center(
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
