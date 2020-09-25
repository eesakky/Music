import 'package:flutter/material.dart';
import 'package:music/constant.dart';
import 'package:music/screens/play/components/body.dart';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text("Now Playing"),
      ),
      body: Body(),
    );
  }
}
