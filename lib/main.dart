import 'package:flutter/material.dart';

import 'currency_converter_statefull.dart';




void main() {
  runApp(const MyApp()); //directional widget
}
//State
// 1-Stateful Widget --> Değişken
// 2-Stateless Widget --> Değişken değil sabit

//Design
//1. Material Design --> Google for aNDROİD
//2. Cupirtino Design --> Apple for IOS

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterStatefullPage(),
    );
  }
}
