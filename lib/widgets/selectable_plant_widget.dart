import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:google_fonts/google_fonts.dart';

double dimensions = 20;
const double distanciaTexto = 7;

class SelectablePlantWidget extends StatelessWidget {
  var image;
  final name;
  final price;
  final type;
  final void Function()? click;

  SelectablePlantWidget({
    Key? key,
    required this.image,
    required this.type,
    required this.name,
    required this.price,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: dimensions,
        right: 0,
        top: dimensions,
        bottom: dimensions,
      ),
      child: InkWell(
        onTap: click,
        child: Container(
          decoration: BoxDecoration(
            color: green,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          height: 240,
          width: 165,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 120,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Opacity(
                                  opacity: 0.3,
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
                          height: 110,
                          width: double.infinity,
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
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: distanciaTexto,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          type,
                          style: GoogleFonts.oswald(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          name,
                          style: GoogleFonts.oswald(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          price,
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: distanciaTexto,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
