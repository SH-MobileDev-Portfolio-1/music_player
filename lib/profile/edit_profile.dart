import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
        SizedBox(
          height: kmediumspace,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kmediumspace - 5,vertical: kmediumspace),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              "Name:",
              style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: kspace, vertical: kspace),
                  hintText: "Muiz",
                  hintStyle: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.white),
                    borderRadius: BorderRadius.circular(ksmallspace),
                  )),
            ),
            SizedBox(
              height: kmediumspace,
            ),
            Text(
              "Gender:",
              style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: kspace, vertical: kspace),
                  hintText: "Male",
                  hintStyle: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.white),
                    borderRadius: BorderRadius.circular(ksmallspace),
                  )),
            ),
            SizedBox(
              height: kmediumspace,
            ),
            Text(
              " Email:",
              style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: kspace, vertical: kspace),
                  hintText: "Muiz@gmail.com",
                  hintStyle: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.white),
                    borderRadius: BorderRadius.circular(ksmallspace),
                  )),
            ),
            SizedBox(
              height: kmediumspace,
            ),
            Text(
              "Bio:",
              style: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: kspace, vertical: kspace),
                  hintText:
                  "I am Muiz, a music lover and i have passion for new artists",
                  hintStyle: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColor.white),
                    borderRadius: BorderRadius.circular(ksmallspace),
                  )),
            ),SizedBox(height: kmediumspace *2),
            Center(
              child: Container(
                width: 150,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(AppColor.mintsgreen),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),

                      ),
                    ),
                  ),
                  onPressed: (){},
                  child: Text('Save', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),

          ],),
        )

      ]),
    );
  }
}
