import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_car_intallment_calculator/views/input_screen_ui.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  Timer? _timer;

  @override
  void initState() {
    super.initState(); // เรียก super ก่อนเสมอ

    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return; // เช็คว่า widget ยังติดอยู่ใน tree หรือไม่

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InputScreenUI(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // ยกเลิก timer เวลา widget ถูกทิ้ง
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img01.png',
              width: 280,
            ),
            const SizedBox(height: 20),
            Text(
              'Car Installment',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[100],
              ),
            ),
            Text(
              'Calculator',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[100],
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            const SizedBox(height: 40),
            Text(
              'Created by tanatorn DTI-SAU',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[100],
              ),
            ),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
