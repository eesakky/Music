import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music/components/music.dart';
import 'package:music/constant.dart';

class MusicList extends StatefulWidget {
  final Music music;

  MusicList({Key key, @required this.music}) : super(key: key);

  @override
  _MusicListState createState() => _MusicListState();
}

class _MusicListState extends State<MusicList> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      child: Stack(children: <Widget>[
        Positioned(
          top: 5,
          child: Image.asset(
            widget.music.imageUrl,
            height: appPosterImageSize,
          ),
        ),
        Positioned(
            top: 5,
            left: appPosterImageSize / 2,
            child: Image.asset(
              'assets/images/cover_cd.png',
              width: appCoverImageSize,
              height: appCoverImageSize,
            )),
        ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              width: appPosterImageSize,
              height: appPosterImageSize + 30,
              child: Image.asset(
                widget.music.imageUrl,
                height: appPosterImageSize,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          width: appPosterImageSize,
          child: Center(
            child: Text(widget.music.label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ),
        ),
      ]),
    );
  }
}
