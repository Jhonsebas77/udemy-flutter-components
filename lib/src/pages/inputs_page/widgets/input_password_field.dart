import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  final String password;
  final Function onChangeText;
  const PasswordInput({
    this.onChangeText,
    this.password,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChangeText(value),
      obscureText: true,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: Colors.green,
        ),
        focusColor: Colors.green,
        hoverColor: Colors.green,
        hintText: 'Password',
        labelText: 'Password',
        suffixIcon: Icon(
          Icons.admin_panel_settings,
          color: Colors.green,
        ),
        icon: Icon(
          Icons.vpn_key_rounded,
          color: Colors.green,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
