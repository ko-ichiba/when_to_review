import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  String format(DateTime d) {
    final m = d.month.toString().padLeft(2, '0');
    final day = d.day.toString().padLeft(2, '0');
    return "$m/$day";
  }

  Widget row(String label, DateTime date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          const SizedBox(width: 24),
          Text(
            format(date),
            style: const TextStyle(
              fontSize: 26,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final today =
        '${now.month.toString().padLeft(2, '0')}/${now.day.toString().padLeft(2, '0')}';

    final d7 = now.subtract(const Duration(days: 7));
    final d21 = now.subtract(const Duration(days: 21));
    final d45 = now.subtract(const Duration(days: 45));
    final d105 = now.subtract(const Duration(days: 105));

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              // ★ タイトル追加
              Text(
                '$today 今日復習するのは',
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 26,
                ),
              ),

              // ★ タイトルとリストの間の余白
              const SizedBox(height: 24),

              // 既存の行
              row("一週間前", d7),
              row("三週間前", d21),
              row("一カ月半前", d45),
              row("三カ月半前", d105),
            ],
          ),
        ),
      ),
    );
  }
}
