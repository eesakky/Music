import 'package:flutter/material.dart';
import 'package:music/components/music.dart';
import 'package:music/components/music_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Music> getMusic() {
    List<Music> musicitems = [];
    musicitems
        .add(Music(label: "Bairavaa", imageUrl: "assets/images/Bairavaa.jpg"));
    musicitems
        .add(Music(label: "Best of Vijay", imageUrl: "assets/images/Best.jpg"));
    musicitems.add(Music(label: "Bigil", imageUrl: "assets/images/Bigil.jpg"));
    musicitems
        .add(Music(label: "Kaththi", imageUrl: "assets/images/Kaththi.jpg"));
    musicitems
        .add(Music(label: "Master", imageUrl: "assets/images/Master.jpg"));
    musicitems
        .add(Music(label: "Mersal", imageUrl: "assets/images/Mersal.jpg"));
    musicitems
        .add(Music(label: "Pokkiri", imageUrl: "assets/images/Pokkiri.jpg"));
    musicitems
        .add(Music(label: "Sarkar", imageUrl: "assets/images/Sarkar.jpg"));
    musicitems.add(Music(label: "Sura", imageUrl: "assets/images/Sura.jpg"));
    musicitems.add(Music(label: "Terri", imageUrl: "assets/images/Terri.jpg"));
    musicitems.add(
        Music(label: "Thuppakki", imageUrl: "assets/images/Thuppakki.jpg"));
    musicitems.add(
        Music(label: "Velayudham", imageUrl: "assets/images/Velayudham.jpg"));
    musicitems.add(
        Music(label: "Voice of Vijay", imageUrl: "assets/images/Voice.jpg"));
    musicitems.add(Music(label: "Jilla", imageUrl: "assets/images/Jilla.jpg"));

    return musicitems;
  }

  Widget getMusicList() {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 2,
      children: getMusic().map((e) => MusicList(music: e)).toList(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        elevation: 0,
        title: Text("My Music"),
      ),
      body: Column(
        children: <Widget>[getMusicList()],
      ),
    );
  }
}
