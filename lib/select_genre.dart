import 'package:flutter/material.dart';
import 'package:music_player/constants/colours.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          /*leading: Icon(
                color: Colors.black,
                Icons.arrow_back_sharp,
              ),*/
          title: Center(
            child: CircleAvatar(
              radius: 30,
              child: Image.asset('logo.png'),
              backgroundColor: Colors.blueAccent,
            ),
          ),
        ),*/
        backgroundColor: MainBackgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: BackButtonColor,
                    radius: 20,
                    child: IconButton(
                      splashRadius: 5,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.black,
                      icon: const Icon(Icons.arrow_back_sharp),
                      onPressed: () {},
                    ),
                  ),
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: BackButtonColor,
                    child: Image.asset('logo.png'),
                  ),
                  const SizedBox(width: 40)
                ],
              ),
              const SizedBox(height: 30),
              //Image.asset('logo.png'),
              const Text(
                "Listen to your favourite Artist",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Select your favourite genre. Pick as many",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const Text(
                "as possible",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 130),
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                //SizedBox(width: 50),
                //CircleAvatar(),
              ]),
              const CircleAvatar(),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 130),
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ]),
              const CircleAvatar(),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 130),
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ]),
              const CircleAvatar(),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
                SizedBox(width: 130),
                CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ]),
              const CircleAvatar(),
              const SizedBox(height: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(230, 50),
                  primary: BackButtonColor,
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}
