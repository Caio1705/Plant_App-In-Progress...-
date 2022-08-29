import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/plant_info_page.dart';

class AglaonemaPage extends StatelessWidget {
  const AglaonemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlantInfoPage(
        size: "Small",
        family: "Cactacea",
        type: "Indoor",
        name: "Aglaonema",
        price: "\$17.95",
        description:
            "The Aglaonema is a highly decorative plant with several interesting varieties. It is one of the most popular houseplants with a wide range of color combinations.",
        waterAmount: "1L",
        miminumTemperature: "8ºC",
        maximumTemperature: "12ºC");
  }
}
