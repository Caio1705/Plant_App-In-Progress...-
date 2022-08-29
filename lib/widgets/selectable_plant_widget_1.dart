import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectablePlantWidget1 extends StatelessWidget {
  var image;
  var name;
  var type;
  var price;
  var rating;
  final void Function()? click;

  SelectablePlantWidget1({
    Key? key,
    required this.image,
    required this.name,
    required this.type,
    required this.price,
    required this.rating,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: dimensions,
        right: dimensions,
        top: dimensions,
        bottom: 0,
      ),
      child: InkWell(
        onTap: click,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(40),
            ),
          ),
          height: 120,
          width: 360,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 96,
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Opacity(
                                  opacity: 0.2,
                                  child: Image.asset(
                                    fit: BoxFit.fitWidth,
                                    "lib/assets/images/$image",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 88,
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Image.asset(
                                  fit: BoxFit.fitWidth,
                                  "lib/assets/images/$image",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 13,
                ),
                SizedBox(
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: GoogleFonts.oswald(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 82,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey.shade600,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            rating,
                            style: GoogleFonts.oswald(
                              color: gray,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        type,
                        style: GoogleFonts.oswald(
                          color: gray,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        price,
                        style: GoogleFonts.oswald(
                          color: green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
