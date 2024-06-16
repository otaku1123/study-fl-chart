import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../provider/chart_state_notifier.dart';
import '../state/line_chart_state.dart';

class ChartAreaWidget extends StatelessWidget {
  const ChartAreaWidget({
    super.key,
    required this.chartState,
    required this.chartStateNotifier,
  });

  final LineChartState chartState;
  final ChartStateNotifier chartStateNotifier;

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: flGridData,
        borderData: flBorderData,
        lineBarsData: lineBarDataList,
        titlesData: titleData,
        backgroundColor: chartState.backgroundColor,
      ),
    );
  }

  FlGridData get flGridData => FlGridData(
        show: chartState.showGrid,
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

  FlTitlesData get titleData => FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              String text = value.toInt().toString();
              return SideTitleWidget(
                  axisSide: meta.axisSide, space: 8, child: Text(text));
            },
          ),
        ),
      );
}
