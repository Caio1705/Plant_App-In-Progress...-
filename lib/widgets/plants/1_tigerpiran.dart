import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class TigerPiran extends StatelessWidget {
  const TigerPiran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectablePlantWidget(
        image: "tigerpiran.png",
        type: "Indoor",
        name: "Tiger Piran",
        price: "\$16.95",
        click: () {});
  }
}
