// Import
import 'package:flutter_test/flutter_test.dart';
import 'package:plantchat/main.dart';

// Main function
void main() {
  testWidgets('Pump widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });
}
