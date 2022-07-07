import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  final String image;
  final String title;
  const CategoriesTile({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image),
        Positioned(
            top: 130,
            left: 20,
            child: Text(
              title,
              style: GoogleFonts.ubuntu(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}
