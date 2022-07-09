import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/constants/size.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.burntgreen,
      body: ListView(children: [
        const SizedBox(height: kmediumspace),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kmediumspace),
          child: Text(
            "Setting",
            style: GoogleFonts.ubuntu(
                color: AppColor.white,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: kspace),
        const Divider(
          thickness: 2,
          color: AppColor.fadegreen,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kmediumspace, vertical: kmediumspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Downloaded Options",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: ksmallspace,
              ),
              Text(
                "Device Storage",
                style: GoogleFonts.ubuntu(
                    color: AppColor.mintgreen,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "512 MB free",
                style: GoogleFonts.ubuntu(
                    color: AppColor.mintgreen,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: ksmallspace),
              Text(
                "Downloaded music",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: ksmallspace),
              Text(
                "125 MB",
                style: GoogleFonts.ubuntu(
                    color: AppColor.mintgreen,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: AppColor.fadegreen,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kmediumspace, vertical: kmediumspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Audio Settings",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: ksmallspace,
              ),
              Text(
                "Audio Quality",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: ksmallspace,
              ),
              Text(
                "Crossfade",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: ksmallspace,
              ),
              Text(
                "Automatic",
                style: GoogleFonts.ubuntu(
                    color: AppColor.mintgreen,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: ksmallspace,
              ),
              Text(
                "Equalizer",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: ksmallspace,
              ),
              Text(
                "Adjust audio output settings",
                style: GoogleFonts.ubuntu(
                    color: AppColor.mintgreen,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          color: AppColor.fadegreen,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kmediumspace, vertical: kmediumspace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Subscription",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: kspace,
              ),
              Text(
                "Payment information",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: kspace,
              ),
              Text(
                "Manage Subscription",
                style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const Divider(thickness: 2, color: AppColor.fadegreen),
        const SizedBox(
          height: kmediumspace,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kmediumspace),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "On/Off Song Identification",
                style: GoogleFonts.ubuntu(
                    color: AppColor.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              FlutterSwitch(
                height: 20.0,
                width: 40.0,
                padding: 4.0,
                toggleSize: 15.0,
                borderRadius: 10.0,
                toggleColor: AppColor.darkgreen,
                activeColor: AppColor.lightsgreen,
                value: isToggled,
                onToggle: (value) {
                  setState(() {
                    isToggled = value;
                  });
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
