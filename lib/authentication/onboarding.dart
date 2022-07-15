import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  final int _numPages = 2;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  // List<Widget> _buildPageIndicator() {
  //   List<Widget> list = [];
  //   for (int i = 0; i < _numPages; i++) {
  //     list.add(i == _currentPage ? indicator(true) : indicator(false));
  //   }
  //   return list;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       // decoration: getDecoration(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
    Container(
    height: 650.0,
    child: PageView(
    physics: ClampingScrollPhysics(),
    controller: _pageController,
    onPageChanged: (int page) {
    setState(() {
    _currentPage = page;
    });
    },
      children: <Widget>[
        // getField('Feel Relaxed',
        //     "Music is a form of art that can be used to express a message. It can also be used to relax the mind, body and soul."),

        // getField('Be Fulfilled',
        //     "Music is a powerful tool for relaxation. It can help you unwind, drift away from the stresses of daily life and find yourself in a state of peace."),
      ],
    ),
    ),
              SizedBox(height: 47),
              Row(
                children: [
                  //getButton(_pageController),
                  SizedBox(width: 240),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: _buildPageIndicator(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
