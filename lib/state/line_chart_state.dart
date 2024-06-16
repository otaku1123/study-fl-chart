
import 'package:flutter/material.dart';

class LineChartState {
  // 軸タイトル
  String? chartTitle;

  // グリッド
  bool showGrid = true;

  // 背景色
  Color? backgroundColor;

  LineChartState({
    this.chartTitle,
    this.showGrid = true,
    this.backgroundColor,
  });

  LineChartState.initial() {
    chartTitle = 'Line Chart';
  }

  LineChartState copyWith({
    String? chartTitle,
    bool? showGrid,
    Color? backgroundColor,
  }) {
    return LineChartState(
      chartTitle: chartTitle ?? this.chartTitle,
      showGrid: showGrid ?? this.showGrid,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}