import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class ParlorPalm extends StatelessWidget {
  const ParlorPalm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget(
      image: "parlorpalm.png",
      type: "Indoor",
      name: "Parlor Palm",
      price: "\$39.95",
      click: () {},
    );
  }
}
