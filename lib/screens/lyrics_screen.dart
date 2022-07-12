import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';

class LyricsPage extends StatefulWidget {
  const LyricsPage({Key? key}) : super(key: key);

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage>
    with SingleTickerProviderStateMixin {
  final audioPlayer = AudioPlayer();
  bool isPlaying = true;
  bool isLyricAvailable = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  late AnimationController controller;

  List emptyLyrics = [LyricsText(text: 'No lyrics available for this song')];
  List availableLyrics = [
    LyricsText(text: 'And my Mama looking over'),
    LyricsText(text: 'Yes, we rise by lifting others'),
    LyricsText(text: ' And that is the law of the latern'),
    LyricsText(text: 'Cause I stand strong'),
    LyricsText(text: 'O.B.O no go minus'),
    LyricsText(text: 'O.B.O, elemi nine plus'),
    LyricsText(text: 'Big fish flow like the Ocean, ooh...'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(children: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(4.0),
                    height: 32,
                    width: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: lightGreenContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: darkGreenArrow,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: imageHighlight,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child: Image.asset(
                        'assets/images/artiste0.png',
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stand Strong",
                      style: GoogleFonts.ubuntu(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15),
                    Text(
                      "Davido Ft. Sunday Service Choir",
                      style: GoogleFonts.ubuntu(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: isLyricAvailable
                      ? availableLyrics.length
                      : emptyLyrics.length,
                  itemBuilder: (context, index) {
                    return isLyricAvailable
                        ? availableLyrics[index]
                        : emptyLyrics[index];
                  }),
            ),
            Spacer(),
            SliderTheme(
                data: const SliderThemeData(
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
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  Text(
                    formatTime(duration - position),
                    style: const TextStyle(
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
                  icon: Icon(Icons.fast_rewind),
                  iconSize: 70,
                  color: Colors.white,
                ),
                IconButton(
                  iconSize: 70,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: isPlaying
                      ? Icon(
                          Icons.pause,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                  onPressed: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.fast_forward),
                  iconSize: 70,
                  color: Colors.white,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

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

class LyricsText extends StatelessWidget {
  const LyricsText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        text,
        style: GoogleFonts.ubuntu(
          fontSize: 32,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
