import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget_1.dart';

class Aglaonema1 extends StatelessWidget {
  const Aglaonema1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget1(
      image: "aglaonemared.png",
      name: "Aglaonema",
      type: "Indoor",
      price: "\$17.00",
      rating: "4.5",
      click: () {},
    );
  }
}
