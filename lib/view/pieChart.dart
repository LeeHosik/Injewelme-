import 'package:flutter/material.dart';
import 'package:inj/model/pieChartData.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

@override
Widget chart(BuildContext context) {
  return Container(
    child: SfCircularChart(
      series: <CircularSeries>[
        // Render pie chart
        PieSeries<ChartData, String>(
          dataSource: chartData,
          // explode: true,
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          dataLabelMapper: (ChartData data, _) => '${data.x}\n${data.y}%',
          dataLabelSettings: const DataLabelSettings(isVisible: true),
        ),
      ],
    ),
  );
} // chart Widget END