import 'package:easy_flutter_timeline_card/timeline_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('TimelineCard with asset image renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TimelineCard.asset(
          title: 'Asset Image Card',
          subtitle: 'Subtitle',
          imageUrl: 'assets/test_image.jpg',
        ),
      ),
    );

    expect(find.text('Asset Image Card'), findsOneWidget);
    expect(find.text('Subtitle'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('TimelineCard with network image renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: TimelineCard.network(
          title: 'Network Image Card',
          subtitle: 'Subtitle',
          imageUrl: 'https://example.com/test_image.jpg',
        ),
      ),
    );

    expect(find.text('Network Image Card'), findsOneWidget);
    expect(find.text('Subtitle'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}
