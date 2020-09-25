import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:music/models/music.dart';
import 'package:music/constant.dart';

class MusicList extends StatelessWidget {
  final int itemIndex;
  final Function press;
  final Music music;

  const MusicList({
    Key key,
    this.itemIndex,
    this.music,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      child: InkWell(
        onTap: press,
        child: Stack(children: <Widget>[
          Positioned(
            top: 5,
            child: Image.asset(
              music.image,
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
                  music.image,
                  height: appPosterImageSize,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            width: appPosterImageSize,
            child: Center(
              child: Text(music.label,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
            ),
          ),
        ]),
      ),
    );
  }
}
