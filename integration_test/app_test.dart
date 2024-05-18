import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab5/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("full app test", (tester) async {
      //start app
      app.main();
      await tester.pumpAndSettle();

      //enter mobile number and press button to get otp
      final mobileNoTextField = find.byKey(const Key("mobile number"));
      final getOTPButton = find.byKey(const Key("get OTP button"));
      final tncCheckbox = find.byType(Checkbox).first;

      await tester.enterText(mobileNoTextField, "123456789");
      await tester.pumpAndSettle();

      expect(
        tester.getSemantics(tncCheckbox),
        matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: false,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true),
      );

      await tester.tap(tncCheckbox);
      await tester.pumpAndSettle();

      expect(
        tester.getSemantics(tncCheckbox),
        matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: true,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true),
      );

      await tester.tap(getOTPButton);
      await tester.pumpAndSettle();

      //OTP page

      final otp = find.byType(TextField).first;

      await tester.enterText(otp, "123456");
      await tester.pumpAndSettle();

      final activateButton = find.byKey(const Key("activate"));

      await tester.ensureVisible(activateButton);
      expect(activateButton, findsOneWidget);

      await tester.tap(activateButton);
      await tester.pumpAndSettle();

      //chart page
      BottomNavigationBar bottomNavBar1 =
          tester.widget(find.byType(BottomNavigationBar));

      expect(bottomNavBar1.currentIndex, 1);

      final chartFactory1button = find.byType(ElevatedButton).first;
      final chartFactory2button = find.byType(TextButton).first;

      await tester.tap(chartFactory1button);
      await tester.pumpAndSettle();

      await tester.tap(chartFactory2button);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.notifications));
      await tester.pumpAndSettle();

      BottomNavigationBar bottomNavBar2 =
          tester.widget(find.byType(BottomNavigationBar));
      expect(bottomNavBar2.currentIndex, 2);

      //notification page
      final notiFactory1button = find.byType(ElevatedButton).last;
      final notiFactory2button = find.byType(TextButton).first;
      final editButton1 = find.byKey(const Key("edit 1"));
      final editButton2 = find.byKey(const Key("edit 2"));

      await tester.tap(notiFactory2button);
      await tester.pumpAndSettle();

      await tester.tap(editButton2);
      await tester.pumpAndSettle();

      await tester.tap(notiFactory1button);
      await tester.pumpAndSettle();

      await tester.tap(editButton1);
      await tester.pumpAndSettle();

      final steamPressureTextField = find.byKey(const Key("steam pressure"));
      final steamFlowTextField = find.byKey(const Key("steam flow"));
      final waterLevelTextField = find.byKey(const Key("water level"));
      final powerFrequencyTextField = find.byKey(const Key("power frequency"));

      await tester.enterText(steamPressureTextField, "10");
      await tester.pumpAndSettle();

      await tester.enterText(steamFlowTextField, "20");
      await tester.pumpAndSettle();

      await tester.enterText(waterLevelTextField, "30");
      await tester.pumpAndSettle();

      await tester.enterText(powerFrequencyTextField, "40");
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.person));
      await tester.pumpAndSettle();

      BottomNavigationBar bottomNavBar3 =
          tester.widget(find.byType(BottomNavigationBar));
      expect(bottomNavBar3.currentIndex, 0);

      //engineer list page
      final profileFactory1button = find.byType(ElevatedButton).last;
      final profileFactory2button = find.byType(TextButton).first;
      final addEngineerButton = find.byType(ElevatedButton).first;

      await tester.tap(profileFactory2button);
      await tester.pumpAndSettle();

      await tester.tap(profileFactory1button);
      await tester.pumpAndSettle();

      await tester.tap(addEngineerButton);
      await tester.pumpAndSettle();

      final ownerName = find.byType(TextField).first;
      final ownerMobileNo = find.byType(TextField).last;

      await tester.enterText(ownerName, "Ali");
      await tester.pumpAndSettle();

      await tester.enterText(ownerMobileNo, "12345678");
      await tester.pumpAndSettle();

      final submitButton = find.byKey(const Key("submit"));
      await tester.ensureVisible(submitButton);
      await tester.pumpAndSettle();

      expect(submitButton, findsOneWidget);

      await tester.tap(submitButton);
      await tester.pumpAndSettle();
    });
  });
}
