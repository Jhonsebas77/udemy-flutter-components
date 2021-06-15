import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'play_circle_fill': Icons.play_circle_fill,
  'input': Icons.input,
  'sliders': Icons.list,
};

Icon getIcon(String nameIcon) => Icon(
      _icons[nameIcon],
      color: Colors.green,
    );
