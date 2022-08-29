import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class Aglaneoma extends StatelessWidget {
  const Aglaneoma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget(
      image: "aglaonemared.png",
      type: "Indoor",
      name: "Aglaonema",
      price: "\$17.95",
      click: () {},
    );
  }
}
