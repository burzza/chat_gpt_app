import 'package:chat_gpt/config/app_route.dart';
import 'package:chat_gpt/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Gpt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
      onGenerateRoute: AppRoute.onGenerateRoute,
    );
  }
}
