import 'package:flutter/material.dart';

/// 復習対象の日付を1行で表示するWidget
class ReviewRow extends StatelessWidget {
  const ReviewRow({super.key, required this.label, required this.dateText});

  final String label;
  final String dateText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            dateText,
            style: const TextStyle(fontSize: 26),
          ),
          const SizedBox(width: 24),
          Text(
            label,
            style: const TextStyle(fontSize: 26),
          ),
        ],
      ),
    );
  }
}
