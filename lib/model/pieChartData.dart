import 'package:flutter/material.dart';

final List<ChartData> chartData = [
  ChartData('탄수화물', 28.30, Colors.amber),
  ChartData('단백질', 35.85, Colors.purpleAccent),
  ChartData('지방', 35.85, Colors.greenAccent),
];

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}// ChartData END
