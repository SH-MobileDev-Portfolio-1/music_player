import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            maxLines: 5,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: kspace, vertical: kspace),
                hintText:
                    "I am Muiz, a music lover and i have passion for new artiste',",
                hintStyle: GoogleFonts.ubuntu(
                  color: AppColor.white,
                  fontSize: 15,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.white),
                  borderRadius: BorderRadius.circular(ksmallspace),
                )),
          ),
          Container(
            width: 50,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColor.mintsgreen),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: AppColor.white),
                  ),
                ),
              ),
              onPressed: null,
              child: Text('Yes', style: TextStyle(color: Colors.white)),
            ),
          ),
        ]),
      ),
    );
  }
}
