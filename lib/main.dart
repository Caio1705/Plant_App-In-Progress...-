import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants/app_constants.dart';
import 'package:flutter_plant_app/screens/first_page.dart';
import 'package:flutter_plant_app/store/plant.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PlantStore>(
          create: (_) => PlantStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const FirstPage(),
      ),
    );
  }
}
