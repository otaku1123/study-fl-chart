import 'package:fl_chart_sample/state/line_chart_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chartStateProvider =
    StateNotifierProvider<ChartStateNotifier, LineChartState>(
  (ref) => ChartStateNotifier(LineChartState.initial()),
);

class ChartStateNotifier extends StateNotifier<LineChartState> {
  ChartStateNotifier(LineChartState initialData) : super(initialData);

  void updateChartTitle(String title) {
    state = state.copyWith(chartTitle: title);
  }

  void updateShowGrid(bool showGrid) {
    state = state.copyWith(showGrid: showGrid);
  }

  void updateShowVerticalGrid(bool showVerticalGrid) {
    state = state.copyWith(showVerticalGrid: showVerticalGrid);
  }

  void updateShowHorizontalGrid(bool showHorizontalGrid) {
    state = state.copyWith(showHorizontalGrid: showHorizontalGrid);
  }

  void updateHorizontalGridLineWidth(double? width) {
    state = state.copyWith(horizontalGridLineWidth: width);
  }

  void updateHorizontalGridLineColor(Color color) {
    state = state.copyWith(horizontalGridLineColor: color);
  }

  void updateVerticalGridLineWidth(double? width) {
    state = state.copyWith(verticalGridLineWidth: width);
  }

  void updateVerticalGridLineColor(Color color) {
    state = state.copyWith(verticalGridLineColor: color);
  }

  void updateHorizontalInterval(double? interval) {
    if (interval == null) {
      state = state.copyWithNull(horizontalInterval: true);
    } else {
      state = state.copyWith(horizontalInterval: interval);
    }
  }

  void updateVerticalInterval(double? interval) {
    if (interval == null) {
      state = state.copyWithNull(verticalInterval: true);
    } else {
      state = state.copyWith(verticalInterval: interval);
    }
  }

  void updateShowBorder(bool showBorder) {
    state = state.copyWith(showBorder: showBorder);
  }

  void updateTopBorderColor(Color color) {
    state = state.copyWith(topBorderColor: color);
  }

  void updateTopBorderWidth(double? width) {
    state = state.copyWith(topBorderWidth: width);
  }

  void updateLeftBorderColor(Color color) {
    state = state.copyWith(leftBorderColor: color);
  }

  void updateLeftBorderWidth(double? width) {
    state = state.copyWith(leftBorderWidth: width);
  }

  void updateRightBorderColor(Color color) {
    state = state.copyWith(rightBorderColor: color);
  }

  void updateRightBorderWidth(double? width) {
    state = state.copyWith(rightBorderWidth: width);
  }

  void updateBottomBorderColor(Color color) {
    state = state.copyWith(bottomBorderColor: color);
  }

  void updateBottomBorderWidth(double? width) {
    state = state.copyWith(bottomBorderWidth: width);
  }

  void updateLineColor(Color color) {
    state = state.copyWith(lineColor: color);
  }

  void updateIsCurved(bool isCurved) {
    state = state.copyWith(isCurved: isCurved);
  }

  void updateBarWidth(double? width) {
    if (width == null) {
      return;
    }

    state = state.copyWith(barWidth: width);
  }

  void updateIsStrokeCapRound(bool isStrokeCapRound) {
    state = state.copyWith(isStrokeCapRound: isStrokeCapRound);
  }

  void updateShowDotData(bool showDotData) {
    state = state.copyWith(showDotData: showDotData);
  }

  void updateShowTitle(bool showTitle) {
    state = state.copyWith(showTitle: showTitle);
  }

  void updateShowBottomTitle(bool showBottomTitle) {
    state = state.copyWith(showBottomTitle: showBottomTitle);
  }

  void updateShowRightTitle(bool showRightTitle) {
    state = state.copyWith(showRightTitle: showRightTitle);
  }

  void updateShowLeftTitle(bool showLeftTitle) {
    state = state.copyWith(showLeftTitle: showLeftTitle);
  }

  void updateShowTopTitle(bool showTopTitle) {
    state = state.copyWith(showTopTitle: showTopTitle);
  }

  void updateBottomTitleInterval(double? interval) {
    state = state.copyWith(bottomTitleInterval: interval);
  }

  void updateRightTitleInterval(double? interval) {
    state = state.copyWith(rightTitleInterval: interval);
  }

  void updateLeftTitleInterval(double? interval) {
    state = state.copyWith(leftTitleInterval: interval);
  }

  void updateTopTitleInterval(double? interval) {
    state = state.copyWith(topTitleInterval: interval);
  }

  void updateBackgroundColor(Color color) {
    state = state.copyWith(backgroundColor: color);
  }
}
