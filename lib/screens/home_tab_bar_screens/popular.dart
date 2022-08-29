// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:flutter_plant_app/widgets/plants/1_aglaonema.dart';
import 'package:flutter_plant_app/widgets/plants/1_goldenpothos.dart';
import 'package:flutter_plant_app/widgets/plants/1_moneytree.dart';
import 'package:flutter_plant_app/widgets/plants/1_parlorpalm.dart';
import 'package:flutter_plant_app/widgets/plants/1_rubberplant.dart';
import 'package:flutter_plant_app/widgets/plants/1_tigerpiran.dart';
import 'package:flutter_plant_app/widgets/plants/2_aglaonema.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Popular extends StatelessWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Aglaneoma(),
                  TigerPiran(),
                  MoneyTree(),
                  RubberPlant(),
                  ParlorPalm(),
                  GoldenPothos(),
                  SizedBox(width: dimensions),
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Most Popular",
                  style: GoogleFonts.oswald(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            Aglaonema1(),
            SizedBox(height: dimensions),
          ],
        ),
      ),
    );
  }
}
