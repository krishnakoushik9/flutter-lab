import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterfirst/main.dart';

void main() {
  testWidgets('Print button works and stops after 20 clicks',
          (WidgetTester tester) async {
        await tester.pumpWidget(MyApp());

        final printButton = find.text('Print');
        expect(printButton, findsOneWidget);

        for (int i = 0; i <= 20; i++) {
          await tester.tap(printButton);
          await tester.pump();
        }

        // Verify the stop message and death emoji after 21st tap
        expect(find.textContaining('☠️ Stop printing buddy'), findsOneWidget);

        // Verify the counter reached at least 21
        expect(find.text('Print Count: 21'), findsOneWidget);
      });
}
