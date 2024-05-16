import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Temperature(),
    );
  }
}

class Temperature extends StatefulWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  State<Temperature> createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  final TextEditingController celsiusController = TextEditingController();
  final TextEditingController fahrenheitController = TextEditingController();

  double? celsiusValue;
  double? fahrenheitValue;

  void convertCelsiusToFahrenheit() {
    if (celsiusController.text.isNotEmpty) {
      double celsius = double.parse(celsiusController.text);
      double fahrenheit = (celsius * 9 / 5) + 32;
      setState(() {
        fahrenheitValue = fahrenheit;
        fahrenheitController.text = fahrenheit.toStringAsFixed(2);
      });
    }
  }

  void convertFahrenheitToCelsius() {
    if (fahrenheitController.text.isNotEmpty) {
      double fahrenheit = double.parse(fahrenheitController.text);
      double celsius = (fahrenheit - 32) * 5 / 9;
      setState(() {
        celsiusValue = celsius;
        celsiusController.text = celsius.toStringAsFixed(2);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            TextField(
              controller: celsiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                prefixIcon: Icon(
                  Icons.star,
                ),
                labelText: "Celsius",
                hintText: "Enter Celsius",
              ),
              onChanged: (value) {
                convertCelsiusToFahrenheit();
              },
            ),
            const SizedBox(height: 20),
            TextField(
              controller: fahrenheitController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                prefixIcon: Icon(
                  Icons.star,
                ),
                labelText: "Fahrenheit",
                hintText: "Enter Fahrenheit",
              ),
              onChanged: (value) {
                convertFahrenheitToCelsius();
              },
            ),
            const SizedBox(height: 20),
            if (celsiusValue != null && fahrenheitValue != null)
              Text(
                'Celsius: $celsiusValue°C\nFahrenheit: $fahrenheitValue°F',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
