import 'package:flutter/material.dart';
import 'package:flutter_plant_app/screens/home_tab_bar_screens/Indoor.dart';
import 'package:flutter_plant_app/screens/home_tab_bar_screens/outdoor.dart';
import 'package:flutter_plant_app/screens/home_tab_bar_screens/popular.dart';
import 'package:flutter_plant_app/screens/home_tab_bar_screens/top_pick.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Plants",
            style: GoogleFonts.oswald(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(
                child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.newspaper,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Top Pick",
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Popular",
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Expanded(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.door_back_door,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Indoor",
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.emoji_nature_outlined,
                        size: 19,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Outdoor",
                        style: GoogleFonts.oswald(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TopPick(),
            Popular(),
            Indoor(),
            Outdoor(),
          ],
        ),
      ),
    );
  }
}
