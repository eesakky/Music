import 'package:flutter/material.dart';
import 'package:music/components/music.dart';
import 'package:music/components/music_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List musicitems = [
    Music(label: "Starboy", imageUrl: "assets/images/starboy.png"),
    Music(label: "Girls Like You", imageUrl: "assets/images/girl_like_you.png"),
    Music(label: "Senorit", imageUrl: "assets/images/senorit.png"),
    Music(
        label: "Love me like you do",
        imageUrl: "assets/images/love_me_like.png"),
    Music(label: "Happier", imageUrl: "assets/images/happier.png"),
    Music(label: "Shape of you", imageUrl: "assets/images/shape_of_you.png"),
  ];

  Widget getMusicList(list) {
    return MusicList(music: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("My Music"),
      ),
      body: Column(
        children: musicitems.map((item) => getMusicList(item)).toList(),
      ),
    );
  }
}
