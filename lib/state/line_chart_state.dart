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

  //borderData
  bool showBorder = true;

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
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  // nullありでコピー
  LineChartState copyWithNull({
    bool chartTitle = false,
    bool horizontalInterval = false,
    bool verticalInterval = false,
    bool barWidth = false,
    bool backgroundColor = false,
  }) {
    return LineChartState(
      chartTitle: chartTitle ? null : this.chartTitle,
      horizontalInterval: horizontalInterval ? null : this.horizontalInterval,
      verticalInterval: verticalInterval ? null : this.verticalInterval,
      barWidth: barWidth ? null : this.barWidth,
      backgroundColor: backgroundColor ? null : this.backgroundColor,
    );
  }
}
