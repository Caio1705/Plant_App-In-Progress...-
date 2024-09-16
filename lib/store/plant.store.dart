// flutter pub run build_runner watch --delete-conflicting-outputs --use-polling-watcher

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_plant_app/screens/login_page.dart';
import 'package:flutter_plant_app/services/plants_services.dart';
import 'package:flutter_plant_app/shared/constants.dart';
import 'package:flutter_plant_app/widgets/plants_info/plants_info_page.dart';
import 'package:mobx/mobx.dart';

part 'plant.store.g.dart';

class PlantStore = _PlantStore with _$PlantStore;

abstract class _PlantStore with Store {
  @observable
  List<String> UrlList = ObservableList();

  @observable
  String ConfirmText = "";

  final _plantsService = PlantsServices(Dio());

  @action
  Future<void> Images(context) async {
    print("clicou");
    try {
      final response =
          await _plantsService.getPlants(Constants.API_KEY, "Aglaonema", 10);
      debugPrint(
        response.toString(),
      );
      print(response.photos?[0].src!.original);
      UrlList.clear();
      response.photos!.forEach(
        (element) {
          UrlList.add(element.src!.original);
        },
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PlantsInfoPage(),
        ),
      );
    } catch (e) {
      print(e);
    }
  }
}
