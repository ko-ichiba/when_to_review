import 'package:flutter/material.dart';

import '../utils/review_schedule.dart';
import '../widgets/review_row.dart';

/// 「今日はいつの復習をするか」を表示するメイン画面
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final todayText = formatDate(today);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$todayText 今日復習するのは',
              style: TextStyle(color: Colors.grey[700], fontSize: 26),
            ),
            const SizedBox(height: 24),
            for (final interval in reviewIntervals)
              ReviewRow(
                label: interval.label,
                dateText: formatDate(dateForInterval(today, interval)),
              ),
          ],
        ),
      ),
    );
  }
}
