import 'package:flutter/material.dart';

import '../provider/chart_state_notifier.dart';
import '../state/line_chart_state.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({
    super.key,
    required this.chartState,
    required this.chartStateNotifier,
  });

  final LineChartState chartState;
  final ChartStateNotifier chartStateNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('chart type'),
        Text('枠線'),
        Text('グリッド'),
        Switch(value: chartState.showGrid, onChanged: chartStateNotifier.updateShowGrid),
        Text('軸'),
        Text('x軸'),
        Text('y軸'),
        Text('データ'),
        Text('アニメーション'),
        Text('タッチ'),
        Text('背景色'),
        ElevatedButton(
          onPressed: () {
            chartStateNotifier.updateBackgroundColor(Colors.red);
          },
          child: Text('Red'),
        ),
        ElevatedButton(
          onPressed: () {
            chartStateNotifier.updateBackgroundColor(Colors.blue);
          },
          child: Text('Blue'),
        ),
      ],
    );
  }
}
