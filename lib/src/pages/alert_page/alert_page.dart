import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert Page',
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          child: Text('Show Alert'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            title: Text('Notification Title'),
            actions: [
              TextButton(
                // style: getButtonStyle(),
                onPressed: () {},
                child: Text(
                  'Accept',
                ),
              ),
              TextButton(
                // style: getButtonStyle(),
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
              ),
            ],
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Notification body'),
                FlutterLogo(
                  size: 100,
                ),
              ],
            ),
          );
        });
  }
}
