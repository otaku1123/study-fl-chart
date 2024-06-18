import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends StatelessWidget {
  ColorPickerWidget({
    super.key,
    required this.pickerColor,
    required this.onColorChanged,
  });

  Color pickerColor;
  ValueChanged<Color> onColorChanged;
  TextEditingController hexInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorPicker(
          pickerColor: pickerColor,
          onColorChanged: onColorChanged,
          colorPickerWidth: 150.0,
          pickerAreaHeightPercent: 0.7,
          enableAlpha: true,
          displayThumbColor: false,
          paletteType: PaletteType.hsv,
        ),
      ],
    );
  }
}
