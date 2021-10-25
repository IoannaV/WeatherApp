import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather app"),
        actions: [WeatherFilterWidget()],
      ),
      body: Center(child: Text("app")),
    );
  }
}

class WeatherFilterWidget extends StatefulWidget {
  WeatherFilterWidget({Key? key}) : super(key: key);

  @override
  _WeatherFilterWidgetState createState() => _WeatherFilterWidgetState();
}

class _WeatherFilterWidgetState extends State<WeatherFilterWidget> {
  String _value = 'Hours';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _value,
      onChanged: (String? newValue) {
        setState(() {
          _value = newValue!;
        });
      },
      items: <String>['Hours', 'Days']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
