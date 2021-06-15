import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'account_circle_rounded': Icons.account_circle_rounded,
  'contact_mail': Icons.contact_mail,
  'play_circle_fill': Icons.play_circle_fill,
  'input': Icons.input,
  'tune': Icons.tune,
  'list_alt': Icons.list_alt,
};

Icon getIcon(String nameIcon) => Icon(
      _icons[nameIcon],
      color: Colors.green,
    );
