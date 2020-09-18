import 'package:flutter/material.dart';
import 'package:music/screens/home/components/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false, appBar: buildAppBar(), body: Body());
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text("My Music"),
    );
  }
}
