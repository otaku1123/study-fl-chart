import 'package:flutter/material.dart';

class LineChartState {
  // 軸タイトル
  String? chartTitle;

  // gridData
  bool showGrid = true;
  bool showVerticalGrid = true;
  bool showHorizontalGrid = true;
  double horizontalGridLineWidth = 1.0;
  Color horizontalGridLineColor = Colors.grey;
  double verticalGridLineWidth = 1.0;
  Color verticalGridLineColor = Colors.grey;
  double? horizontalInterval;
  double? verticalInterval;

  // borderData
  bool showBorder = true;

  // lineBarsData
  Color lineColor = Colors.blue;
  bool isCurved = true;
  double barWidth = 2.0;
  bool isStrokeCapRound = true;
  bool showDotData = true;

  // 背景色
  Color backgroundColor = Colors.white;

  LineChartState({
    this.chartTitle,
    this.showGrid = true,
    this.showHorizontalGrid = true,
    this.showVerticalGrid = true,
    this.horizontalGridLineWidth = 1.0,
    this.horizontalGridLineColor = Colors.grey,
    this.verticalGridLineWidth = 1.0,
    this.verticalGridLineColor = Colors.grey,
    this.horizontalInterval,
    this.verticalInterval,
    this.showBorder = true,
    this.lineColor = Colors.blue,
    this.isCurved = true,
    this.barWidth = 2.0,
    this.isStrokeCapRound = true,
    this.showDotData = true,
    this.backgroundColor = Colors.white,
  });

  LineChartState.initial() {
    chartTitle = 'Line Chart';

  }

  LineChartState copyWith({
    String? chartTitle,
    bool? showGrid,
    bool? showHorizontalGrid,
    bool? showVerticalGrid,
    double? horizontalGridLineWidth,
    Color? horizontalGridLineColor,
    double? verticalGridLineWidth,
    Color? verticalGridLineColor,
    double? horizontalInterval,
    double? verticalInterval,
    bool? showBorder,
    Color? lineColor,
    bool? isCurved,
    double? barWidth,
    bool? isStrokeCapRound,
    bool? showDotData,
    Color? backgroundColor,
  }) {
    return LineChartState(
      chartTitle: chartTitle ?? this.chartTitle,
      showGrid: showGrid ?? this.showGrid,
      showHorizontalGrid: showHorizontalGrid ?? this.showHorizontalGrid,
      showVerticalGrid: showVerticalGrid ?? this.showVerticalGrid,
      horizontalGridLineWidth: horizontalGridLineWidth ?? this.horizontalGridLineWidth,
      horizontalGridLineColor: horizontalGridLineColor ?? this.horizontalGridLineColor,
      verticalGridLineWidth: verticalGridLineWidth ?? this.verticalGridLineWidth,
      verticalGridLineColor: verticalGridLineColor ?? this.verticalGridLineColor,
      horizontalInterval: horizontalInterval ?? this.horizontalInterval,
      verticalInterval: verticalInterval ?? this.verticalInterval,
      showBorder: showBorder ?? this.showBorder,
      lineColor: lineColor ?? this.lineColor,
      isCurved: isCurved ?? this.isCurved,
      barWidth: barWidth ?? this.barWidth,
      isStrokeCapRound: isStrokeCapRound ?? this.isStrokeCapRound,
      showDotData: showDotData ?? this.showDotData,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  // nullありでコピー
  LineChartState copyWithNull({
    bool chartTitle = false,
    bool horizontalInterval = false,
    bool verticalInterval = false,
  }) {
    return LineChartState(
      chartTitle: chartTitle ? null : this.chartTitle,
      horizontalInterval: horizontalInterval ? null : this.horizontalInterval,
      verticalInterval: verticalInterval ? null : this.verticalInterval,
    );
  }
}
