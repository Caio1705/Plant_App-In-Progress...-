import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantInfoPage extends StatelessWidget {
  var size;
  var family;
  var type;
  var name;
  var price;
  var description;
  var waterAmount;
  var miminumTemperature;
  var maximumTemperature;

  PlantInfoPage({
    Key? key,
    required this.size,
    required this.family,
    required this.type,
    required this.name,
    required this.price,
    required this.description,
    required this.waterAmount,
    required this.miminumTemperature,
    required this.maximumTemperature,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
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
        backgroundColor: green,
      ),
    );
  }
}
