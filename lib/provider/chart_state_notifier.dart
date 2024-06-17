import 'package:fl_chart_sample/state/line_chart_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final chartStateProvider = StateNotifierProvider<ChartStateNotifier, LineChartState>(
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

  void updateBackgroundColor(Color color) {
    state = state.copyWith(backgroundColor: color);
  }
}