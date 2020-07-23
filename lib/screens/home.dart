import 'package:flutter/material.dart';
import 'package:music/components/music.dart';
import 'package:music/components/music_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Music> musicitems = [
    Music(label: "Starboy", imageUrl: "images/starboy.png"),
    Music(label: "Girls Like You", imageUrl: "images/girl_like_you.png"),
    Music(label: "Senorit", imageUrl: "images/senorit.png"),
    Music(label: "Love me like you do", imageUrl: "images/love_me_like.png"),
    Music(label: "Happier", imageUrl: "images/happier.png"),
    Music(label: "Shape of you", imageUrl: "images/shape_of_you.png"),
  ];

  Widget getMusicList(list) {
    return MusicList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: musicitems.map((item) => getMusicList(item)),
      ),
    );
  }
}
