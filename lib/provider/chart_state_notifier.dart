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

  void updateBackgroundColor(Color color) {
    state = state.copyWith(backgroundColor: color);
  }
}