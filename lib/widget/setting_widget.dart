import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

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
    return SettingsList(
      sections: [
        SettingsSection(
          title: Text('チャートタイプ'),
          tiles: [
            SettingsTile(
              title: Text('折れ線グラフ'),
            ),
            SettingsTile(
              title: Text('棒グラフ'),
            ),
            SettingsTile(
              title: Text('円グラフ'),
            ),
          ],
        ),
        SettingsSection(
          title: Text('gridData'),
          tiles: [
            SettingsTile.switchTile(
              title: Text('showGrid'),
              initialValue: chartState.showGrid,
              onToggle: chartStateNotifier.updateShowGrid,
            ),
            SettingsTile.switchTile(
              title: Text('drawHorizontalLine'),
              initialValue: chartState.showHorizontalGrid,
              onToggle: chartStateNotifier.updateShowHorizontalGrid,
            ),
            SettingsTile.switchTile(
              title: Text('drawVerticalLine'),
              initialValue: chartState.showVerticalGrid,
              onToggle: chartStateNotifier.updateShowVerticalGrid,
            ),
            SettingsTile(
              title: Text('getDrawingHorizontalLine'),
            ),
            SettingsTile(
              title: Text('getDrawingVerticalLine'),
            ),
            SettingsTile(
              title: Text('horizontalInterval'),
              value: DropdownButtonFormField(
                value: chartState.horizontalInterval,
                items: [0.5, 1, 2, 3, 4, 5]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: (value) {
                  chartStateNotifier.updateHorizontalInterval(value!.toDouble());
                },
              ),
            ),
            SettingsTile(
              title: Text('verticalInterval'),
              value: DropdownButtonFormField(
                value: chartState.verticalInterval,
                items: [0.5, 1, 2, 3, 4, 5]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: (value) {
                  chartStateNotifier.updateVerticalInterval(value!.toDouble());
                },
              ),
            ),
          ],
        ),
        SettingsSection(
          title: Text('borderData'),
          tiles: [
            SettingsTile.switchTile(
              title: Text('show'),
              initialValue: true,
              onToggle: (_) {},
            ),
            SettingsTile(
              title: Text('border'),
            ),
          ],
        ),
        SettingsSection(
          title: Text('lineBarsData'),
          tiles: [
            SettingsTile(title: Text('spots'),),
            SettingsTile(title: Text('isCurved'),),
            SettingsTile(title: Text('barWidth'),),
            SettingsTile(title: Text('isStrokeCapRound'),),
            SettingsTile(title: Text('dotData'),),
          ],
        ),
        SettingsSection(
          title: Text('titlesData'),
          tiles: [
            SettingsTile(
              title: Text('topTitles'),
            ),
            SettingsTile(
              title: Text('leftTitles'),
            ),
            SettingsTile(
              title: Text('rightTitles'),
            ),
            SettingsTile(
              title: Text('bottomTitles'),
            ),
          ],
        ),
        SettingsSection(
          title: Text('backgroundColor'),
          tiles: [
            SettingsTile(
              title: Text('赤'),
              onPressed: (_) {
                chartStateNotifier.updateBackgroundColor(Colors.red);
              },
            ),
            SettingsTile(
              title: Text('青'),
              onPressed: (_) {
                chartStateNotifier.updateBackgroundColor(Colors.blue);
              },
            ),
          ],
        ),
      ],
    );
    //   Column(
    //   children: [
    //     Text('chart type'),
    //     Text('枠線'),
    //     Text('グリッド'),
    //     Switch(value: chartState.showGrid, onChanged: chartStateNotifier.updateShowGrid),
    //     Text('軸'),
    //     Text('x軸'),
    //     Text('y軸'),
    //     Text('データ'),
    //     Text('アニメーション'),
    //     Text('タッチ'),
    //     Text('背景色'),
    //     ElevatedButton(
    //       onPressed: () {
    //         chartStateNotifier.updateBackgroundColor(Colors.red);
    //       },
    //       child: Text('Red'),
    //     ),
    //     ElevatedButton(
    //       onPressed: () {
    //         chartStateNotifier.updateBackgroundColor(Colors.blue);
    //       },
    //       child: Text('Blue'),
    //     ),
    //   ],
    // );
  }
}
