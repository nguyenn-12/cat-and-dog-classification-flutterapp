import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cat_and_dog/home.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 4000, // 4 giây
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Cat and Dog Classifier',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent,
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/cat_dog_icon.png',
            height: 60,
            width: 60,
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error, size: 60, color: Colors.red);
            },
          ),
          SizedBox(height: 20),
          CircularProgressIndicator(color: Colors.redAccent),
        ],
      ),
      nextScreen: Home(),
      backgroundColor: Colors.blueAccent,
      splashIconSize: 250, // Tăng kích thước splash để tránh bị lỗi
    );
  }
}
