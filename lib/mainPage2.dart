import 'package:flutter/material.dart';

class MainPage2 extends StatefulWidget {
  const MainPage2({super.key});

  @override

  State<MainPage2> createState() => _MainPage();
}

class _MainPage extends State<MainPage2> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Text('Main Page 2')
      )
    );
  }
}
