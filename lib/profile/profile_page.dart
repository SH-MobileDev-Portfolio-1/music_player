import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.burntgreen,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 35,
                height: 35,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                    color: AppColor.lightgreen, shape: BoxShape.circle),
              ),
              IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: ksmallspace,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage:
                    AssetImage("assets/images/profile_picture.png"),
              ),
              SizedBox(
                width: kspace,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'User Name:',
                      style: GoogleFonts.ubuntu(
                          color: AppColor.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Muiz',
                          style: GoogleFonts.ubuntu(
                              color: AppColor.white, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'User Id:',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColor.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: '  122695769',
                          style: GoogleFonts.ubuntu(
                            color: AppColor.white,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Bio:',
                      style: GoogleFonts.ubuntu(
                          color: AppColor.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              ' I am Muiz, a music lover\n           and i have passion for new\n           artiste',
                          style: GoogleFonts.ubuntu(
                            color: AppColor.white,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: kmediumspace,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Playlist(15)",
                style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 11,
                ),
              ),
              Text(
                "View All",
                style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 11,
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
