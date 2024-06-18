import 'package:flutter/material.dart';

class LineChartState {
  // 軸タイトル
  String? chartTitle;

  // gridData
  bool showGrid = true;
  bool showVerticalGrid = true;
  bool showHorizontalGrid = true;
  double? horizontalInterval;
  double? verticalInterval;

  // borderData
  bool showBorder = true;

  // lineBarsData
  bool isCurved = true;
  double barWidth = 2.0;
  bool isStrokeCapRound = true;
  bool showDotData = true;

  // 背景色
  Color? backgroundColor;

  LineChartState({
    this.chartTitle,
    this.showGrid = true,
    this.showHorizontalGrid = true,
    this.showVerticalGrid = true,
    this.horizontalInterval,
    this.verticalInterval,
    this.showBorder = true,
    this.isCurved = true,
    this.barWidth = 2.0,
    this.isStrokeCapRound = true,
    this.showDotData = true,
    this.backgroundColor,
  });

  LineChartState.initial() {
    chartTitle = 'Line Chart';

  }

  LineChartState copyWith({
    String? chartTitle,
    bool? showGrid,
    bool? showHorizontalGrid,
    bool? showVerticalGrid,
    double? horizontalInterval,
    double? verticalInterval,
    bool? showBorder,
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
      horizontalInterval: horizontalInterval ?? this.horizontalInterval,
      verticalInterval: verticalInterval ?? this.verticalInterval,
      showBorder: showBorder ?? this.showBorder,
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
    bool backgroundColor = false,
  }) {
    return LineChartState(
      chartTitle: chartTitle ? null : this.chartTitle,
      horizontalInterval: horizontalInterval ? null : this.horizontalInterval,
      verticalInterval: verticalInterval ? null : this.verticalInterval,
      backgroundColor: backgroundColor ? null : this.backgroundColor,
    );
  }
}
