import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:music_player_v2/Model/music_model.dart';
import 'package:music_player_v2/Services/music_Service.dart';

class MusicProvider extends ChangeNotifier {
  late MusicModel music;
  String imageurl = '';
  String SingerName = '';
  String Title = '';

  Future<void> GetMusic() async {
    var value = await MusicService().GetMusicDetails();
    var tempJson = json.decode(value.body);

    music = MusicModel.fromJson(tempJson);
    imageurl = music.data![0].track!.imageurl!;
    SingerName = music.data![0].track!.artist!;
    Title = music.data![0].track!.title!;
    notifyListeners();
  }
}
