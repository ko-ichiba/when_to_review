import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'screens/review_screen.dart';

void main() {
  // 想定外のエラーが発生してもアプリを落とさずログに残す
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    debugPrint('Unhandled error: $error\n$stack');
    return true;
  };

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '今日の復習',
      theme: ThemeData(fontFamily: 'NotoSansJP'),
      home: const ReviewScreen(),
    );
  }
}
