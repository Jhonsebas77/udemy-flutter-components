import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final String email;
  final Function onChangeText;
  const EmailInput({
    this.onChangeText,
    this.email,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChangeText(value),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: Colors.green,
        ),
        focusColor: Colors.green,
        hoverColor: Colors.green,
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(
          Icons.alternate_email,
          color: Colors.green,
        ),
        icon: Icon(
          Icons.email,
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
