import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sliders',
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 40.0,
        ),
        child: Column(
          children: [
            _buildSlider(),
            Text(
              '${_sliderValue.floor()}',
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: _buildImage(),
            ),
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
      onChanged: (value) {
        setState(() {
          _sliderValue = value;
        });
      },
      activeColor: Colors.green,
      inactiveColor: Colors.greenAccent,
      label: 'Size Image',
      // divisions: 10,
    );
  }

  Widget _buildImage() {
    return FadeInImage(
      placeholder: AssetImage(
        'Assets/images/jar-loading.gif',
      ),
      image: NetworkImage(
        'https://i.pinimg.com/originals/00/19/6c/00196c7c8e41a7b958daae0543694ce1.jpg',
      ),
      fadeInDuration: Duration(
        milliseconds: 200,
      ),
      width: _sliderValue,
      fit: BoxFit.contain,
    );
  }
}
