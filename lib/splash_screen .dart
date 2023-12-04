import 'dart:async';
import 'package:flutter/material.dart';
import 'package:top_ten/home_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(22, 34, 42, 1),
              Color.fromRGBO(58, 96, 115, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 170,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 2),
                      blurRadius: 25.0,
                      spreadRadius: 8.0,
                    ),
                  ],
                  shape: BoxShape.circle,
                ),
                child: Image.asset("images/earth.png"),
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Top Ten Country',
                    textStyle: const TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                      shadows: [
                        BoxShadow(
                          color: Colors.green,
                          blurRadius: 0.5,
                        ),
                      ],
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                ],
                // totalRepeatCount: 4,
                // pause: const Duration(milliseconds: 1000),
                // displayFullTextOnTap: true,
                // stopPauseOnTap: true,
              ),
              SizedBox(height: 16),
              Text(
                'V 0.1.1',
                style: TextStyle(
                  color: const Color.fromRGBO(86, 102, 106, 1),
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
