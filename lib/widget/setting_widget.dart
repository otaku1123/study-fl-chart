import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('chart type'),
        Text('枠線'),
        Text('背景色'),
        Text('グリッド'),
        Text('軸'),
        Text('x軸'),
        Text('y軸'),
        Text('データ'),
        Text('アニメーション'),
        Text('タッチ'),
        Text('その他'),
      ],
    );
  }
}
