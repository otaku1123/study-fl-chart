import 'package:fl_chart_sample/provider/chart_state_notifier.dart';
import 'package:fl_chart_sample/widget/chart_area_widget.dart';
import 'package:fl_chart_sample/widget/code_preview_widget.dart';
import 'package:fl_chart_sample/widget/setting_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainPage extends HookConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chartState = ref.watch(chartStateProvider);
    final chartStateNotifier = ref.watch(chartStateProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ChartAreaWidget(
                      chartState: chartState,
                      chartStateNotifier: chartStateNotifier,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: CodePreviewWidget(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SettingWidget(
                chartState: chartState,
                chartStateNotifier: chartStateNotifier,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
