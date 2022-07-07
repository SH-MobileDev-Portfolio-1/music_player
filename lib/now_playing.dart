import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/constants/colours.dart';

class Playing extends StatefulWidget {
  const Playing({Key? key}) : super(key: key);

  @override
  State<Playing> createState() => _PlayingState();
}

class _PlayingState extends State<Playing> with SingleTickerProviderStateMixin {
  final audioPlayer = AudioPlayer();
  bool isPlaying = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  late AnimationController controller;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          backgroundColor: BackButtonColor,
          radius: 10,
          child: IconButton(
            splashRadius: 5,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            color: Colors.black,
            icon: Icon(Icons.arrow_back_sharp),
            onPressed: () {},
          ),
        ),
      ),*/
      backgroundColor: MainBackgroundColor,
      body: Center(
        child: Column(children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                backgroundColor: BackButtonColor,
                radius: 20,
                child: IconButton(
                  splashRadius: 5,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  color: Colors.black,
                  icon: Icon(Icons.arrow_back_sharp),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 100,
            backgroundColor: CircleColor,
            child: ClipOval(
                child: Image.asset(
              'Sarada.png',
              width: 170,
              height: 170,
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(height: 15),
          Text(
            "Stand Strong",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Davido Ft. Sunday Service Choir",
            style: TextStyle(
              color: Colors.white70,
              fontSize: 15,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w100,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(CupertinoIcons.heart),
                color: Colors.white,
                onPressed: () {},
              ),
              SizedBox(width: 50),
              Icon(Icons.repeat, color: Colors.white),
              SizedBox(width: 50),
              Icon(Icons.shuffle, color: Colors.white)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 5),
              Text(
                'Favourites',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w100,
                  color: Colors.white70,
                ),
              ),
              SizedBox(width: 50),
              Text(
                'Repeat',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w100,
                  color: Colors.white70,
                ),
              ),
              SizedBox(width: 45),
              Text(
                'Shuffle',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w100,
                  color: Colors.white70,
                ),
              ),
              SizedBox(width: 5)
            ],
          ),
          SizedBox(height: 30),
          SliderTheme(
              data: SliderThemeData(
                  thumbColor: Colors.lightBlueAccent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7)),
              child: Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                value: position.inSeconds.toDouble(),
                onChanged: (value) async {},
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatTime(position),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  formatTime(duration - position),
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white70,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.fast_rewind_sharp),
                iconSize: 70,
                color: Colors.white,
              ),
              IconButton(
                iconSize: 70,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: AnimatedIcon(
                  icon: AnimatedIcons.pause_play,
                  color: Colors.white,
                  progress: controller,
                ),
                onPressed: toggleIcon,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.fast_forward_sharp),
                iconSize: 70,
                color: Colors.white,
              ),
            ],
          ),
        ]),
      ),
    );
  }

  void toggleIcon() => setState(() {
        isPlaying = !isPlaying;
        isPlaying ? controller.forward() : controller.reverse();
      });

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }
}
