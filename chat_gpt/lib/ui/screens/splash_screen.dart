import 'dart:async';

import 'package:chat_gpt/ui/screens/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "/splashscreen";
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const SplashScreen());
  }

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initilizeApp();
  }

  initilizeApp() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'WELCOME TO CHAT GPT',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
