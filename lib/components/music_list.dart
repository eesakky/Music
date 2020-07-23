import 'package:flutter/material.dart';
import '../constant.dart';

class MusicList extends StatefulWidget {
  final musicLabel;
  final musicImage;

  MusicList({this.musicImage, this.musicLabel});

  @override
  _MusicListState createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        title: Text("My Music"),
      ),
      body: Container(),
    );
  }
}
