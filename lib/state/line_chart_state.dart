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

  // 背景色
  Color? backgroundColor;

  LineChartState({
    this.chartTitle,
    this.showGrid = true,
    this.showHorizontalGrid = true,
    this.showVerticalGrid = true,
    this.horizontalInterval,
    this.verticalInterval,
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
    Color? backgroundColor,
  }) {
    return LineChartState(
      chartTitle: chartTitle ?? this.chartTitle,
      showGrid: showGrid ?? this.showGrid,
      showHorizontalGrid: showHorizontalGrid ?? this.showHorizontalGrid,
      showVerticalGrid: showVerticalGrid ?? this.showVerticalGrid,
      horizontalInterval: horizontalInterval ?? this.horizontalInterval,
      verticalInterval: verticalInterval ?? this.verticalInterval,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}
