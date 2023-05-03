import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/widget/contact_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Adding new contact', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Find the name and phone text fields
    final nameTextField = find.byType(TextField).first;
    final phoneTextField = find.byType(TextField).last;

    // Enter a name and phone number
    await tester.enterText(nameTextField, 'John Doe');
    await tester.enterText(phoneTextField, '1234567890');

    // Find and tap the Add button
    final addButton = find.text('Add');
    await tester.tap(addButton);

    // Rebuild the widget after the state has changed
    await tester.pump();

    // Ensure the new contact is displayed in the list
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('1234567890'), findsOneWidget);

    // Ensure there is only one contact list item displayed
    expect(find.byType(ListTile), findsOneWidget);
    expect(find.byType(ListTile).evaluate().length, equals(1));
  });
}
