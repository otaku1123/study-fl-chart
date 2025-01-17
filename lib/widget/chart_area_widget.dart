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
        drawVerticalLine: chartState.showVerticalGrid,
        drawHorizontalLine: chartState.showHorizontalGrid,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: chartState.horizontalGridLineColor,
            strokeWidth: chartState.horizontalGridLineWidth,
          );
        },
        getDrawingVerticalLine: (value) {
          return FlLine(
            color: chartState.verticalGridLineColor,
            strokeWidth: chartState.verticalGridLineWidth,
          );
        },
        horizontalInterval: chartState.horizontalInterval,
        verticalInterval: chartState.verticalInterval,
      );

  FlBorderData get flBorderData => FlBorderData(
        show: chartState.showBorder,
        border: Border(
          bottom: BorderSide(
            color: chartState.bottomBorderColor,
            width: chartState.bottomBorderWidth,
          ),
          left: BorderSide(
            color: chartState.leftBorderColor,
            width: chartState.leftBorderWidth,
          ),
          right: BorderSide(
            color: chartState.rightBorderColor,
            width: chartState.rightBorderWidth,
          ),
          top: BorderSide(
            color: chartState.topBorderColor,
            width: chartState.topBorderWidth,
          ),
        ),
      );

  List<LineChartBarData> get lineBarDataList => [
        LineChartBarData(
          color: chartState.lineColor,
          spots: [
            FlSpot(0, 1),
            FlSpot(1, 3),
            FlSpot(2, 2),
            FlSpot(3, 4),
            FlSpot(4, 5),
          ],
          isCurved: chartState.isCurved,
          barWidth: chartState.barWidth,
          isStrokeCapRound: chartState.isStrokeCapRound,
          dotData: FlDotData(
            show: chartState.showDotData,
          ),
        ),
      ];

  FlTitlesData get titleData => FlTitlesData(
        show: chartState.showTitle,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: chartState.showBottomTitle,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                  axisSide: meta.axisSide, space: 8, child: Text(value.toString()));
            },
            interval: chartState.bottomTitleInterval,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: chartState.showLeftTitle,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                  axisSide: meta.axisSide, space: 8, child: Text(value.toString()));
            },
            interval: chartState.leftTitleInterval,
          ),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: chartState.showRightTitle,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                  axisSide: meta.axisSide, space: 8, child: Text(value.toString()));
            },
            interval: chartState.rightTitleInterval,
          ),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: chartState.showTopTitle,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              return SideTitleWidget(
                  axisSide: meta.axisSide, space: 8, child: Text(value.toString()));
            },
            interval: chartState.topTitleInterval,
          ),
        ),
      );
}
