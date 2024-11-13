import 'package:flutter/material.dart';
import 'help_request.dart'; // Import the help_request.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EvacNow',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EvacNowPage(), // Use the EvacNowPage from help_request.dart
    );
  }
}
