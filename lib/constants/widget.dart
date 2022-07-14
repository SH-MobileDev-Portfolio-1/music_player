import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';

final header = GoogleFonts.ubuntu(textStyle: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 32.0,));

final subheading = GoogleFonts.ubuntu(textStyle: TextStyle(
  color: Colors.white,
  fontSize: 16.0,));

final skip = GoogleFonts.ubuntu(textStyle: TextStyle(
  color: Colors.white,
  fontSize: 16.0,));


Widget getField(headerTxt,descTxt){
  return Padding(
    padding: EdgeInsets.only(left: 20.0, top: 513),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Text(
            headerTxt,
            style: header,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          descTxt,
          style: subheading,
        )
      ],
    ),
  );
}
Widget getButton(_pageController){
  return Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: FlatButton(
      color: Colours.mainBlue,
      onPressed: () {
        _pageController.nextPage(
            duration: Duration(microseconds: 300),
            curve: Curves.easeIn);
      },
      child: Text(
        'Next',
        style: GoogleFonts.ubuntu(textStyle: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),)
    ),
  );
}

BoxDecoration getDecoration(){
  return BoxDecoration(
    image: DecorationImage(
      image: NetworkImage(
          "https://i.ibb.co/WtBJ2vc/Splashbackground.png"),
      fit: BoxFit.cover,
    ),
  );
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(microseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
    height: 6.0,
    width: isActive ? 16.0 : 6.0,
    decoration: BoxDecoration(
      color: isActive ? Colours.mainBlue : Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );
}