import 'package:easy_flutter_timeline_card/timeline_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TimelineCard renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: TimelineCard(
          title: 'Test Card',
          subtitle: 'Test Subtitle',
          imageUrl: 'assets/test_image.jpg',
        ),
      ),
    );

    expect(find.text('Test Card'), findsOneWidget);
    expect(find.text('Test Subtitle'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
