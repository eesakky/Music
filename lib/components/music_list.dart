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
    return Stack(
      children: <Widget>[
        Image.asset(
          widget.music.imageUrl,
          height: appPosterImageSize,
        ),
      ],
    );
  }
}
