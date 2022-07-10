import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';

import '../widgets/profile_tile.dart';

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
      body: ListView(children: [
        Card(color: AppColor.burntgreen,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kmediumspace,vertical: kmediumspace - 5),
            child:
            Column(
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
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: kmediumspace * 5),
                      child: SvgPicture.asset(
                        "assets/icons/edit.svg",
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/share.svg",
                    ),

                  ],
                ), const SizedBox(
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
                      padding: const EdgeInsets.only(top: kmediumspace *3,),
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
                                style: GoogleFonts.ubuntu(fontWeight: FontWeight.w400,
                                    color: AppColor.white, fontSize: 14),
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
                                  color: AppColor.white,fontWeight: FontWeight.w400,
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
                                  color: AppColor.white,fontWeight: FontWeight.w400,
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
        const SizedBox(
          height: kmediumspace
        ),
        Card(color: AppColor.burntgreen,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kmediumspace - 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Playlist(15)",
                      style: GoogleFonts.ubuntu(
                          color: AppColor.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "View All",
                      style: GoogleFonts.ubuntu(
                        color: AppColor.white,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ProfileTile(
                            image: "assets/images/all.png",
                            name: "B3atz all in one mix"),
                        ProfileTile(
                            image: "assets/images/tall.png", name: "Best of Burnaboy"),
                        ProfileTile(
                            image: "assets/images/wizkid.png", name: "Best of Wizkid"),
                      ],
                    )),
                const SizedBox(
                  height: kmediumspace + kspace,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Following(54)",
                      style: GoogleFonts.ubuntu(
                        color: AppColor.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "View All",
                      style: GoogleFonts.ubuntu(
                        color: AppColor.white,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        ProfileTile(
                            image: "assets/images/artiste3.png", name: "Burna Boy"),
                        ProfileTile(
                            image: "assets/images/psquare.png", name: "Rudeboy"),
                        ProfileTile(
                            image: "assets/images/rihanna.png", name: "Nicki Minaj"),
                        ProfileTile(image: "assets/images/simi.png", name: "Simi"),
                      ],
                    )),
                const SizedBox(height: kspace),
                Center(
                    child: Text(
                      "Follow More",
                      style: GoogleFonts.ubuntu(
                        color: AppColor.white,fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )), const SizedBox(height: kspace),
              ],
            ),
          ),
        ),


        const SizedBox(height: kspace),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kmediumspace -5 ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Followers(12)",
                    style: GoogleFonts.ubuntu(
                      color: AppColor.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "View All",
                    style: GoogleFonts.ubuntu(
                      color: AppColor.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      ProfileTile(
                        image: "assets/images/ada.png",
                      ),
                      ProfileTile(
                        image: "assets/images/gospel.png",
                      ),
                      ProfileTile(
                          image: "assets/images/man.png"),
                      ProfileTile(
                          image: "assets/images/hajia.png"),
                    ],
                  ))
            ],
          ),
        ),

      ]),
    );
  }
}

