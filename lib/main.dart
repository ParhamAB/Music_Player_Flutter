import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_player_v2/Model/music_model.dart';
import 'package:music_player_v2/Services/api_url.dart';
import 'package:provider/provider.dart';
import 'package:music_player_v2/Services/ProviderMusic.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => MusicProvider())],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Main();
  }
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  Duration myDuration = Duration.zero;
  MusicProvider provider = MusicProvider();
  var songDetails;
  Timer? countdownTimer;
  Timer? timer;

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds + reduceSecondsBy;
      myDuration = Duration(seconds: seconds);
    });
  }

  @override
  void initState() {
    super.initState();
    player.onPlayerStateChanged.listen((State) {
      setState(() {
        isPlaying = State == PlayerState.playing;
      });
    });

    provider.GetMusic();

    timer = Timer.periodic(Duration(seconds: 2), (Timer t) async {
      provider.GetMusic();
    });
  }

  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    // Step 7
    final hours = strDigits(myDuration.inHours.remainder(24));
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Consumer<MusicProvider>(builder: (context, music, _) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    music.imageurl == ''
                        ? 'https://miro.medium.com/max/1280/1*-Nr0OP_Nu7b2NPrcgJ1SuA.png'
                        : music.imageurl,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 90),
                Text(
                  music.SingerName,
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  music.Title,
                  style: TextStyle(fontSize: 35),
                ),
                Text(
                  '${hours != '00' ? hours + ':' : ''}${minutes != '00' ? minutes + ':' : ''}${seconds}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 50),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [],
                  ),
                ),
                CircleAvatar(
                  radius: 35,
                  child: IconButton(
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    iconSize: 50,
                    onPressed: () async {
                      if (isPlaying) {
                        await player.pause();
                        stopTimer();
                      } else {
                        var url = ApiUrl().BaseLiveMusicUrl +
                            ApiUrl().EndPointLiveMusic;
                        await player.play(UrlSource(url));
                        startTimer();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
