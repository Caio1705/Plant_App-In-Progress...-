import 'package:flutter/material.dart';
import 'package:flutter_plant_app/widgets/plants/2_aglaonema.dart';
import 'package:flutter_plant_app/widgets/selectable_plant_widget.dart';

class Indoor extends StatelessWidget {
  const Indoor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Aglaonema1(),
            const Aglaonema1(),
            const Aglaonema1(),
            const Aglaonema1(),
            const Aglaonema1(),
            SizedBox(height: dimensions)
          ],
        ),
      ),
    );
  }
}
