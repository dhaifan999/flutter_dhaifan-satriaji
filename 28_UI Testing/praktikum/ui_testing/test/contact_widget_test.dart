import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ui_testing/widget/contact_widget.dart';
import 'package:ui_testing/widget/input_widget.dart';

void main() {
  group('ContactWidget UI Test', () {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();

    testWidgets('renders properly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ContactWidget(
              nameController: nameController,
              phoneController: phoneController,
              onPressed: () {},
            ),
          ),
        ),
      );

      expect(find.text('Name'), findsOneWidget);
      expect(find.text('Nomor'), findsOneWidget);
      expect(find.text('Submit'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(find.byType(InputContactWidget), findsNWidgets(2));
    });

    testWidgets('displays correct text when input is entered',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ContactWidget(
              nameController: nameController,
              phoneController: phoneController,
              onPressed: () {},
            ),
          ),
        ),
      );

      final nameField = find.widgetWithText(InputContactWidget, 'Name');
      final phoneField = find.widgetWithText(InputContactWidget, 'Nomor');
      await tester.enterText(nameField, 'John Doe');
      await tester.enterText(phoneField, '+6281234567890');

      expect(nameController.text, 'John Doe');
      expect(phoneController.text, '+6281234567890');
    });

    testWidgets('calls onPressed when button is pressed',
        (WidgetTester tester) async {
      var isPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ContactWidget(
              nameController: nameController,
              phoneController: phoneController,
              onPressed: () {
                isPressed = true;
              },
            ),
          ),
        ),
      );

      final button = find.widgetWithText(ElevatedButton, 'Submit');
      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(isPressed, true);
    });
  });
}
