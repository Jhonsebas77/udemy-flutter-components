import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/config/l10n/generated/l10n.dart';
import 'package:flutter_components_udemy/src/pages/inputs_page/widgets/input_email_field.dart';
import 'package:flutter_components_udemy/src/pages/inputs_page/widgets/input_field.dart';
import 'package:flutter_components_udemy/src/pages/inputs_page/widgets/input_password_field.dart';

class InputsPage extends StatefulWidget {
  InputsPage({Key key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _name;
  String _email;
  String _password = '';
  String _date = '';
  String _selectOption = 'Male';

  List<String> _gender = [
    'Male',
    'Female',
  ];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text inputs',
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 20.0,
        ),
        children: [
          _buildInput(),
          _buildDivider(),
          _buildEmailInput(),
          _buildDivider(),
          _buildPasswordInput(),
          _buildDivider(),
          _buildDatePicker(),
          _buildDivider(),
          _buildDropDown(),
          _buildDivider(),
          _buildPerson(),
        ],
      ),
    );
  }

  Widget _buildDivider() => Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.green,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      );

  Widget _buildInput() => NormalInput(
        name: _name,
        onChangeText: (value) {
          setState(
            () => _name = value,
          );
        },
      );

  Widget _buildPerson() {
    return ListTile(
      title: Text(
        'Name is: ${_name ?? ''}',
      ),
      subtitle: Text(
        'Email is: ${_email ?? ''}',
      ),
      leading: _password.isNotEmpty
          ? Icon(
              Icons.vpn_key,
            )
          : Icon(
              Icons.vpn_key_outlined,
            ),
      trailing: _selectOption == 'Male'
          ? Icon(
              Icons.accessibility_new,
            )
          : Icon(
              Icons.pregnant_woman,
            ),
    );
  }

  Widget _buildEmailInput() => EmailInput(
        email: _email,
        onChangeText: (value) {
          setState(
            () => _email = value,
          );
        },
      );

  Widget _buildPasswordInput() => PasswordInput(
        password: _password,
        onChangeText: (value) {
          setState(
            () => _password = value,
          );
        },
      );

  Widget _buildDatePicker() {
    return TextField(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          color: Colors.green,
        ),
        focusColor: Colors.green,
        hoverColor: Colors.green,
        hintText: 'Birth date',
        labelText: L10n.current.inputBirthDate,
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
      locale: Locale('es', 'ES'),
    );

    if (picked != null) {
      setState(() {
        _date = picked.toIso8601String();
        _inputFieldDateController.text = _date;
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionDropdown() {
    List<DropdownMenuItem<String>> _list = new List();
    _gender.forEach((_power) {
      _list.add(
        DropdownMenuItem(
          child: Text(
            _power,
          ),
          value: _power,
        ),
      );
    });
    return _list;
  }

  Widget _buildDropDown() {
    return DropdownButton(
      value: _selectOption,
      items: getOptionDropdown(),
      onChanged: (_opt) {
        setState(() {
          _selectOption = _opt;
        });
      },
      icon: Icon(
        Icons.wc,
      ),
      isExpanded: true,
    );
  }
}
