import 'package:flutter/material.dart';

class DatePickerInput extends StatelessWidget {
  final String password;
  final Function onChangeText;
  const DatePickerInput({
    this.onChangeText,
    this.password,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: Colors.green,
        ),
        focusColor: Colors.green,
        hoverColor: Colors.green,
        hintText: 'Birth date',
        labelText: 'Birth date',
        suffixIcon: Icon(
          Icons.perm_contact_calendar,
          color: Colors.green,
        ),
        icon: Icon(
          Icons.calendar_today,
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

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2019),
      lastDate: new DateTime(2025),
    );

    if (picked != null) {}
  }
}
