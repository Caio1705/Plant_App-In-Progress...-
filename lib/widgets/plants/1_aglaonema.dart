import 'package:flutter/material.dart';
import 'package:flutter_plant_app/store/plant.store.dart';
import 'package:flutter_plant_app/widgets/plant_info_page.dart';
import 'package:flutter_plant_app/widgets/plants_info/plants_info_page.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';
import 'package:provider/provider.dart';

class Aglaneoma extends StatelessWidget {
  Aglaneoma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PlantStore>(context);

    return SelectablePlantWidget(
      image: "aglaonemared.png",
      type: "Indoor",
      name: "Aglaonema",
      price: "\$17.95",
      click: () async {
        await store.Images(context);
      },
    );
  }
}
