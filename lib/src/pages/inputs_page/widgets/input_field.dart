import 'package:flutter/material.dart';

class NormalInput extends StatelessWidget {
  final String name;
  final Function onChangeText;
  const NormalInput({
    this.onChangeText,
    this.name,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => onChangeText(value),
      decoration: InputDecoration(
        counter: Text(
          'Characters ${name?.length ?? 0}',
        ),
        labelStyle: TextStyle(
          color: Colors.green,
        ),
        focusColor: Colors.green,
        hoverColor: Colors.green,
        hintText: 'Person Name',
        labelText: 'Name',
        helperText: 'Only the name',
        suffixIcon: Icon(
          Icons.accessibility_new,
          color: Colors.green,
        ),
        icon: Icon(
          Icons.account_box_outlined,
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
