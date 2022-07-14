import 'package:flutter/material.dart';
import 'package:music_player/constants/widget.dart';
import 'package:music_player/authentication/sign_up.dart';
import 'package:music_player/screens/lyrics_screen.dart';
import 'package:music_player/screens/queue_screen.dart';
import 'authentication/onboarding.dart';
import 'package:music_player/authentication/sign_in.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  decideNavigation() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const QueuePage())));
  }

  @override
  void initState() {
    super.initState();
    decideNavigation();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: getDecoration(),
//        decoration: BoxDecoration(
//          image: DecorationImage(
//           image:
//                NetworkImage("https://i.ibb.co/WtBJ2vc/Splashbackground.png"),
//            fit: BoxFit.cover,
//          ),
//        ),
        child: Center(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const SignIn())),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 222,
                  height: 222,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
