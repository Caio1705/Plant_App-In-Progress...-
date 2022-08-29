import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class MoneyTree extends StatelessWidget {
  const MoneyTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget(
      image: "moneytree.png",
      type: "Indoor",
      name: "Money Tree",
      price: "\$39.95",
      click: () {},
    );
  }
}
