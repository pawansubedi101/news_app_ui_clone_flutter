import 'package:flutter/material.dart';
import 'package:news_app_ui_clone/services/go_to_nextpage.dart';

import 'package:news_app_ui_clone/views/screens/home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1000), () async {
      await goTONextPageWithReplaceMent(context, const HomeScreen());
    });
    return Scaffold(
      body: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}
