import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({super.key});

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200.0;
  bool _lockSlider = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders'), backgroundColor: Colors.green),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        child: Column(
          children: [
            _buildSlider(),
            Text(
              'Width image: ${_sliderValue.floor()} px',
              textAlign: TextAlign.center,
            ),
            _buildCheckBox(),
            _buildCheckSwitch(),
            Expanded(child: _buildImage()),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return Slider(
      value: _sliderValue,
      min: 0.0,
      max: 400.0,
      onChanged:
          _lockSlider
              ? (value) {
                setState(() {
                  _sliderValue = value;
                });
              }
              : null,
      activeColor: Colors.green,
      inactiveColor: Colors.green[100],
      label: 'Size Image',
      // divisions: 10,
    );
  }

  Widget _buildImage() {
    return FadeInImage(
      placeholder: AssetImage('Assets/images/jar-loading.gif'),
      image: NetworkImage(
        'https://i.pinimg.com/originals/00/19/6c/00196c7c8e41a7b958daae0543694ce1.jpg',
      ),
      fadeInDuration: Duration(milliseconds: 200),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }

  Widget _buildCheckBox() {
    return CheckboxListTile(
      value: _lockSlider,
      onChanged: (value) {
        setState(() {
          _lockSlider = value ?? false;
        });
      },
      title: Text('Enable Slider'),
      subtitle: Text('Enable to change the image size'),
      secondary: Icon(Icons.photo_size_select_large_sharp, color: Colors.green),
      activeColor: Colors.green,
    );
  }

  Widget _buildCheckSwitch() {
    return SwitchListTile(
      value: _lockSlider,
      onChanged: (value) {
        setState(() {
          _lockSlider = value;
        });
      },
      title: Text('Enable Slider'),
      subtitle: Text('Same, but in SwitchListTile'),
      secondary: Icon(Icons.photo_size_select_large, color: Colors.green),
      activeThumbColor: Colors.green,
    );
  }
}
