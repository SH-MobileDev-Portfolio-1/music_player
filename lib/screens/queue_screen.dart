import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({Key? key}) : super(key: key);

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage>
    with SingleTickerProviderStateMixin {
  final audioPlayer = AudioPlayer();
  bool isPlaying = true;
  bool isLyricAvailable = true;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  late AnimationController controller;

  List songQueue = [
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
    const QueuedSongs(
      artist: "Davido Ft. Sunday Service Choir",
      image: 'assets/images/artiste0.png',
      songName: "Stand Strong",
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.topLeft,
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
                  ),
                  SizedBox(width:10.0),
                  Text(
                    "Now Playing",
                    style: GoogleFonts.ubuntu(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
              Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Playing Next",
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: songQueue.length,
                    itemBuilder: (context, index) {
                      return songQueue[index];
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QueuedSongs extends StatelessWidget {
  const QueuedSongs(
      {Key? key,
      required this.image,
      required this.songName,
      required this.artist})
      : super(key: key);
  final String image;
  final String songName;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  image,
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                )),
            // SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  songName,
                  style: GoogleFonts.ubuntu(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  artist,
                  style: GoogleFonts.ubuntu(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.play_circle_outline,
              color: lightGreenContainer,
            )
          ],
        ),
      ),
    );
  }
}
