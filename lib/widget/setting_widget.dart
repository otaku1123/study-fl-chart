import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../provider/chart_state_notifier.dart';
import '../state/line_chart_state.dart';
import 'color_picker_widget.dart';

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
              value: Column(
                children: [
                  SettingsTile(
                    title: Text('line width'),
                    value: DropdownButtonFormField(
                      items: [0, 1, 2, 3, 4, 5]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        chartStateNotifier
                            .updateHorizontalGridLineWidth(value as double?);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('color'),
                    value: ColorPickerWidget(
                      pickerColor: chartState.horizontalGridLineColor,
                      onColorChanged: (color) {
                        chartStateNotifier.updateHorizontalGridLineColor(color);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SettingsTile(
              title: Text('getDrawingVerticalLine'),
              value: Column(
                children: [
                  SettingsTile(
                    title: Text('line width'),
                    value: DropdownButtonFormField(
                      items: [0, 1, 2, 3, 4, 5]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        chartStateNotifier
                            .updateVerticalGridLineWidth(value as double?);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('color'),
                    value: ColorPickerWidget(
                      pickerColor: chartState.verticalGridLineColor,
                      onColorChanged: (color) {
                        chartStateNotifier.updateVerticalGridLineColor(color);
                      },
                    ),
                  ),
                ],
              ),
            ),
            SettingsTile(
              title: Text('horizontalInterval'),
              value: DropdownButtonFormField(
                value: chartState.horizontalInterval,
                items: [null, 0.5, 1, 2, 3, 4, 5]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: (value) {
                  chartStateNotifier.updateHorizontalInterval(value as double?);
                },
              ),
            ),
            SettingsTile(
              title: Text('verticalInterval'),
              value: DropdownButtonFormField(
                value: chartState.verticalInterval,
                items: [null, 0.5, 1, 2, 3, 4, 5]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: (value) {
                  chartStateNotifier.updateVerticalInterval(value as double?);
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
              initialValue: chartState.showBorder,
              onToggle: chartStateNotifier.updateShowBorder,
            ),
            SettingsTile(
              title: Text('border'),
              value: Column(
                children: [
                  SettingsTile(
                    title: Text('top color'),
                    value: ColorPickerWidget(
                      pickerColor: chartState.topBorderColor,
                      onColorChanged: (color) {
                        chartStateNotifier.updateTopBorderColor(color);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('top line width'),
                    value: DropdownButtonFormField(
                      value: chartState.topBorderWidth,
                      items: [0, 0.5, 1, 2, 3, 4, 5]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        chartStateNotifier
                            .updateTopBorderWidth(value as double);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('left color'),
                    value: ColorPickerWidget(
                      pickerColor: chartState.leftBorderColor,
                      onColorChanged: (color) {
                        chartStateNotifier.updateLeftBorderColor(color);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('left line width'),
                    value: DropdownButtonFormField(
                      value: chartState.leftBorderWidth,
                      items: [0, 0.5, 1, 2, 3, 4, 5]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        chartStateNotifier
                            .updateLeftBorderWidth(value as double);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('right color'),
                    value: ColorPickerWidget(
                      pickerColor: chartState.rightBorderColor,
                      onColorChanged: (color) {
                        chartStateNotifier.updateRightBorderColor(color);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('right line width'),
                    value: DropdownButtonFormField(
                      value: chartState.rightBorderWidth,
                      items: [0, 0.5, 1, 2, 3, 4, 5]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        chartStateNotifier
                            .updateRightBorderWidth(value as double);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('bottom color'),
                    value: ColorPickerWidget(
                      pickerColor: chartState.bottomBorderColor,
                      onColorChanged: (color) {
                        chartStateNotifier.updateBottomBorderColor(color);
                      },
                    ),
                  ),
                  SettingsTile(
                    title: Text('bottom line width'),
                    value: DropdownButtonFormField(
                      value: chartState.bottomBorderWidth,
                      items: [0, 0.5, 1, 2, 3, 4, 5]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e.toString()),
                              ))
                          .toList(),
                      onChanged: (value) {
                        chartStateNotifier
                            .updateBottomBorderWidth(value as double);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SettingsSection(
          title: Text('lineBarsData'),
          tiles: [
            SettingsTile(
              title: Text('color'),
              value: ColorPickerWidget(
                pickerColor: chartState.lineColor,
                onColorChanged: (color) {
                  chartStateNotifier.updateLineColor(color);
                },
              ),
            ),
            SettingsTile(
              title: Text('spots'),
            ),
            SettingsTile.switchTile(
              title: Text('isCurved'),
              initialValue: chartState.isCurved,
              onToggle: chartStateNotifier.updateIsCurved,
            ),
            SettingsTile(
              title: Text('barWidth'),
              value: DropdownButtonFormField(
                value: chartState.barWidth,
                items: [0.5, 1, 2, 3, 4, 5]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: (value) {
                  chartStateNotifier.updateBarWidth(value as double);
                },
              ),
            ),
            SettingsTile.switchTile(
              title: Text('isStrokeCapRound'),
              initialValue: chartState.isStrokeCapRound,
              onToggle: chartStateNotifier.updateIsStrokeCapRound,
            ),
            SettingsTile.switchTile(
              title: Text('dotData'),
              initialValue: chartState.showDotData,
              onToggle: chartStateNotifier.updateShowDotData,
            ),
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
              title: Text(''),
              leading: Icon(Icons.color_lens),
              value: ColorPickerWidget(
                pickerColor: chartState.backgroundColor,
                onColorChanged: (color) {
                  chartStateNotifier.updateBackgroundColor(color);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
