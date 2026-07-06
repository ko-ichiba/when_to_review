/// 拡散分散学習(スペースドリピティション)の復習間隔を表す
class ReviewInterval {
  const ReviewInterval({required this.label, required this.daysAgo});

  final String label;
  final int daysAgo;
}

/// 表示する復習間隔の一覧
const List<ReviewInterval> reviewIntervals = [
  ReviewInterval(label: '一週間前', daysAgo: 7),
  ReviewInterval(label: '三週間前', daysAgo: 21),
  ReviewInterval(label: '一カ月半前', daysAgo: 45),
  ReviewInterval(label: '三カ月半前', daysAgo: 105),
];

/// 基準日から指定間隔だけ遡った日付を返す
DateTime dateForInterval(DateTime baseDate, ReviewInterval interval) {
  return baseDate.subtract(Duration(days: interval.daysAgo));
}

/// 日付を"MM/DD"形式の文字列に変換する
String formatDate(DateTime date) {
  final month = date.month.toString().padLeft(2, '0');
  final day = date.day.toString().padLeft(2, '0');
  return '$month/$day';
}
