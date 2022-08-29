import 'package:flutter/material.dart';
import 'package:flutter_plant_app/screens/home_page.dart';
import 'package:flutter_plant_app/widgets/plants/2_aglaonema.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              title: Text(
                "All plants",
                style: GoogleFonts.oswald(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.transparent,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.abc_rounded,
                  size: 40,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                const Aglaonema1(),
                SizedBox(height: dimensions)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
