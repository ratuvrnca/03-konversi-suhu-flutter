import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = new TextEditingController();

  double inputUser = 0;
  double kelvin = 0;
  double reamur = 0;
  double fahrenheit = 0;

  void _incrementCounter() {
    setState(() {
      inputUser = double.parse(etInput.text);
      kelvin = inputUser + 273;
      reamur = 4 / 5 * inputUser;
      fahrenheit = 9 / 5 * inputUser + 32;
    });
  }

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Konversi Suhu',
        theme: ThemeData(
            primarySwatch: Colors.pink,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'Ratu Veronica Elyzabeth Islami',
                    ),
                    Text(
                      '2031710119',
                    ),
                  ],
                ),
                TextFormField(
                  controller: etInput,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Suhu Dalam Celcius',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Suhu dalam Celcius",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          inputUser.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Suhu dalam Kelvin",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          kelvin.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        const Text(
                          "Suhu dalam Reamur",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          reamur.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Text(
                          "Suhu dalam Fahrenheit",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          fahrenheit.toStringAsFixed(2),
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: _incrementCounter,
                      color: Color.fromARGB(255, 161, 31, 79),
                      textColor: Colors.white,
                      child: const Text("Konversi"),
                    ))
              ],
            ),
          ),
        ));
  }
}
