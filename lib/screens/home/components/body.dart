import 'package:flutter/material.dart';
import 'package:music/models/music.dart';
import 'package:music/screens/home/components/music_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Stack(
            children: <Widget>[
              ListView.builder(
                  itemCount: musics.length,
                  itemBuilder: (context, index) => MusicList(
                        itemIndex: index,
                        music: musics[index],
                      ))
            ],
          ))
        ],
      ),
    );
  }
}
