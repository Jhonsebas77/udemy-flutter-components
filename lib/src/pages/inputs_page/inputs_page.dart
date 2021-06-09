import 'package:flutter/material.dart';
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
          Divider(),
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

  _buildPasswordInput() => PasswordInput(
        password: _password,
        onChangeText: (value) {
          setState(
            () => _password = value,
          );
        },
      );
}
