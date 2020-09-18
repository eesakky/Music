import 'package:flutter/material.dart';
import 'package:music/models/music.dart';
import 'package:music/screens/home/components/music_list.dart';

class Home extends StatelessWidget {
  Widget getMusicList() {
    // return Expanded(
    //     child: GridView.count(
    //   crossAxisCount: 2,
    //   children: getMusic().map((e) => MusicList(music: e)).toList(),
    // ));
    return Expanded(
        child: Stack(
      children: <Widget>[
        ListView.builder(
            itemCount: musics.length,
            itemBuilder: (context, index) => MusicList(
                  itemIndex: index,
                  music: musics[index],
                ))
      ],
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
