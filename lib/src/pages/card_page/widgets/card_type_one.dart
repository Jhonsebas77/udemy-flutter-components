import 'package:flutter/material.dart';

class CardType1 extends StatelessWidget {
  const CardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green),
            title: Text('I`m a title'),
            subtitle: Text('This is a Subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: getButtonStyle(),
                onPressed: () {},
                child: Text('Accept'),
              ),
              TextButton(
                style: getButtonStyle(),
                onPressed: () {},
                child: Text('Cancel'),
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }

  ButtonStyle getButtonStyle() {
    return ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith(getColorForeground),
      overlayColor: WidgetStateProperty.resolveWith(getColorBackground),
    );
  }

  Color getColorForeground(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{
      WidgetState.pressed,
      WidgetState.hovered,
      WidgetState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green[300]!;
    }
    return Colors.green;
  }

  Color getColorBackground(Set<WidgetState> states) {
    const Set<WidgetState> interactiveStates = <WidgetState>{
      WidgetState.pressed,
      WidgetState.hovered,
      WidgetState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.green[300]!;
    }
    return Colors.transparent;
  }
}
