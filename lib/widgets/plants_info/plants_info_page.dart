import 'package:flutter/material.dart';
import 'package:flutter_plant_app/store/plant.store.dart';
import 'package:provider/provider.dart';

class PlantsInfoPage extends StatelessWidget {
  const PlantsInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PlantStore>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Aglaonema"),
      ),
      body: ListView.builder(
          itemCount: store.UrlList.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              store.UrlList[index],
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;

                return const Center(child: CircularProgressIndicator());
                // You can use LinearProgressIndicator or CircularProgressIndicator instead
              },
              errorBuilder: (context, error, stackTrace) =>
                  const Text('Some errors occurred!'),
            );
          }),
      // Image.network(store.UrlList[0]),
    );
  }
}
