import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_car_intallment_calculator/main.dart';
import 'package:flutter_car_intallment_calculator/views/splash_screen_ui.dart';
import 'package:flutter_car_intallment_calculator/views/input_screen_ui.dart';

void main() {
  testWidgets('SplashScreenUI is displayed and navigates to InputScreenUI',
      (WidgetTester tester) async {
    // โหลดแอป
    await tester.pumpWidget(const FlutterCarInstallmentCalculator());

    // ต้องเจอ SplashScreenUI ตอนเริ่มต้น
    expect(find.byType(SplashScreenUI), findsOneWidget);

    // เลื่อนเวลา 3 วินาทีเพื่อให้ timer ทำงาน
    await tester.pump(const Duration(seconds: 3));

    // รอ navigation และ animation จนเสร็จ
    await tester.pumpAndSettle();

    // SplashScreenUI ต้องไม่เจอแล้ว
    expect(find.byType(SplashScreenUI), findsNothing);

    // ต้องเจอ InputScreenUI แทน
    expect(find.byType(InputScreenUI), findsOneWidget);
  });
}
