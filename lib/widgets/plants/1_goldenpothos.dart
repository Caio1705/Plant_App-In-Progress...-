import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class GoldenPothos extends StatelessWidget {
  const GoldenPothos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget(
        image: "goldenpothos.png",
        type: "Indoor",
        name: "Golden Pothos",
        price: "\$19.95",
        click: () {});
  }
}
