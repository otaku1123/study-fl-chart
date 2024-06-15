import 'package:fl_chart_sample/widget/chart_area_widget.dart';
import 'package:fl_chart_sample/widget/code_preview_widget.dart';
import 'package:fl_chart_sample/widget/setting_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ChartAreaWidget(),
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
              child: SettingWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
