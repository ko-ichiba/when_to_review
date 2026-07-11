import 'package:flutter_test/flutter_test.dart';

import 'package:when_to_review/main.dart';
import 'package:when_to_review/utils/review_schedule.dart';

void main() {
  testWidgets('復習間隔のラベルが画面に表示される', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    for (final interval in reviewIntervals) {
      expect(find.text(interval.label), findsOneWidget);
    }
  });
}
