import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_player/constants/colours.dart';
import 'package:music_player/select_genre.dart';
import 'package:music_player/widgets/download_tab.dart';
import 'package:music_player/widgets/favorites_tab.dart';
import 'package:music_player/widgets/local_music_tab.dart';

class TabPages extends StatefulWidget {
  const TabPages({Key? key}) : super(key: key);

  @override
  State<TabPages> createState() => _TabPagesState();
}

class _TabPagesState extends State<TabPages> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(

      length: 3, child: Scaffold(
        backgroundColor: mainBackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children:  [
                     InkWell(
                          onTap: () {Navigator.of(context).pop();},
                          child: Container(
                            margin: EdgeInsets.all(9.0),
                            height: 32,
                            width: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: lightGreenContainer,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              color: darkGreenArrow,
                            ),
                          ),
                        ),
                    Expanded(
                      child: TabBar(
                        padding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.zero,
                       indicatorColor: Colors.transparent,
                                labelColor: Colors.white,
                                unselectedLabelColor: Colors.white.withOpacity(0.7),
                        tabs:[
                        
                        Tab(text: 'Local Music',),
                        Tab(text: 'Favourite',),
                       Tab(text: 'Download',),
                      ]),
                    ),
                    Image.asset('assets/images/filter.png', height: 29, width: 50,),
                  ],
                ),
              ),
             const Expanded(child: TabBarView(children: [
                LocalMusicTab(),
                FavouriteTab(),
                DownloadedTab()
              ],))
            ],
          ),
        ),
      ));
    
  }
}