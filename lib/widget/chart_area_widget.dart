import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartAreaWidget extends StatelessWidget {
  const ChartAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: flGridData,
        borderData: flBorderData,
        lineBarsData: lineBarDataList,
      ),
    );
  }

  FlGridData get flGridData => FlGridData(
        show: true,
        drawVerticalLine: true,
        drawHorizontalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: Colors.grey,
            strokeWidth: 1,
          );
        },
      );

  FlBorderData get flBorderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          left: BorderSide(
            color: Colors.black,
            width: 1,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      );

  List<LineChartBarData> get lineBarDataList => [
        LineChartBarData(
          spots: [
            FlSpot(0, 1),
            FlSpot(1, 3),
            FlSpot(2, 2),
            FlSpot(3, 4),
            FlSpot(4, 5),
          ],
          isCurved: true,
          barWidth: 4,
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: true,
          ),
        ),
      ];
}
