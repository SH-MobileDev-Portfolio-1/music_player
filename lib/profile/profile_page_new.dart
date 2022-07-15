import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';
import 'package:music_player/home_page/bottom_nav_bar.dart';
import 'package:music_player/profile/edit_profile.dart';

class ProfilePageNew extends StatefulWidget {
  const ProfilePageNew({Key? key}) : super(key: key);

  @override
  State<ProfilePageNew> createState() => _ProfilePageNewState();
}

class _ProfilePageNewState extends State<ProfilePageNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.burntgreen,
      body: ListView(children: [
        Card(
          color: AppColor.burntgreen,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kmediumspace, vertical: kmediumspace - 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          color: AppColor.lightgreen, shape: BoxShape.circle),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomNavBar()));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kmediumspace * 5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfile()));
                        },
                        child: SvgPicture.asset(
                          "assets/icons/edit.svg",
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/share.svg",
                    ),
                  ],
                ),
                const SizedBox(
                  height: ksmallspace,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          AssetImage("assets/images/profile_picture.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: kmediumspace * 3,
                      ),
                      child: SvgPicture.asset("assets/icons/edits.svg"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: 'User Name:',
                            style: GoogleFonts.ubuntu(
                                color: AppColor.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Muiz',
                                style: GoogleFonts.ubuntu(
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.white,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'User ID:',
                            style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: AppColor.white),
                            children: <TextSpan>[
                              TextSpan(
                                text: '  122695769',
                                style: GoogleFonts.ubuntu(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
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
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    ' I am Muiz, a music lover\n           and I have passion for new\n           artists',
                                style: GoogleFonts.ubuntu(
                                  color: AppColor.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          color: AppColor.burntgreen,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kmediumspace, vertical: kmediumspace + kspace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Playlist(0)",
                  style: GoogleFonts.ubuntu(
                      color: AppColor.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: kmediumspace * 2,
                ),
                Center(
                  child: Text(
                    "Create New Playlist",
                    style: GoogleFonts.ubuntu(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: kmediumspace),
              ],
            ),
          ),
        ),
        Card(
          color: AppColor.burntgreen,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kmediumspace, vertical: kmediumspace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Following(0)",
                  style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: kmediumspace * 2,
                ),
                Center(
                  child: Text(
                    "Follow Your Friends",
                    style: GoogleFonts.ubuntu(
                        color: AppColor.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: kmediumspace * 2,
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: kspace),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kmediumspace, vertical: kmediumspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Followers(0)",
                style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
              const SizedBox(
                height: kmediumspace * 2,
              ),
              Center(
                child: Text(
                  "Share your Links to friends",
                  style: GoogleFonts.ubuntu(
                      color: AppColor.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
