import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Konversi Suhu',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Konverter Suhu - 2031710119/Ratu Veronica"),
          ),
          body: Container(
            margin: EdgeInsets.all(8),
            child: TextFormField(
              keyboardType: TextInputType.numberWithOptions(),
              decoration: const InputDecoration(
                  hintText: 'Masukkan Suhu Dalam Celcius'),
            ),
          ),
        ));
  }
}
