import 'package:flutter/material.dart';
import 'package:flutter_car_intallment_calculator/views/splash_screen_ui.dart';

void main() {
  runApp(const FlutterCarInstallmentCalculator());
}

class FlutterCarInstallmentCalculator extends StatelessWidget {
  const FlutterCarInstallmentCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Installment Calculator',
      debugShowCheckedModeBanner: false,
      home:
          const SplashScreenUI(), // ตั้งตรงนี้ให้แสดง SplashScreenUI ตอนเริ่มต้น
    );
  }
}
