import 'package:flutter/material.dart';
import '../constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("My Music"),
      ),
    );
  }
}
