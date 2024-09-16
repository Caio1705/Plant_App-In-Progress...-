import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:flutter_plant_app/screens/view_all.dart';
import 'package:flutter_plant_app/widgets/plants/1_aglaonema.dart';
import 'package:flutter_plant_app/widgets/plants/1_goldenpothos.dart';
import 'package:flutter_plant_app/widgets/plants/1_moneytree.dart';
import 'package:flutter_plant_app/widgets/plants/1_parlorpalm.dart';
import 'package:flutter_plant_app/widgets/plants/1_rubberplant.dart';
import 'package:flutter_plant_app/widgets/plants/1_tigerpiran.dart';
import 'package:flutter_plant_app/widgets/plants/2_aglaonema.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPick extends StatelessWidget {
  const TopPick({Key? key}) : super(key: key);

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
                  const TigerPiran(),
                  const MoneyTree(),
                  const RubberPlant(),
                  const ParlorPalm(),
                  const GoldenPothos(),
                  SizedBox(width: dimensions),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Recently Add",
                  style: GoogleFonts.oswald(
                    fontSize: 17,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 220,
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.transparent,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ViewAll(),
                      ),
                    );
                  },
                  child: Text(
                    "View all",
                    style: GoogleFonts.oswald(
                      fontSize: 13.7,
                      color: green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const Aglaonema1(),
            const Aglaonema1(),
            const Aglaonema1(),
            const Aglaonema1(),
            SizedBox(height: dimensions)
          ],
        ),
      ),
    );
  }
}
