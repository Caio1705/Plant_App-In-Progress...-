import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class RubberPlant extends StatelessWidget {
  const RubberPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget(
      image: "rubberplant.png",
      type: "Indoor",
      name: "Rubber Plant",
      price: "\$24.95",
      click: () {},
    );
  }
}
