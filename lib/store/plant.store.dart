// flutter pub run build_runner watch --delete-conflicting-outputs --use-polling-watcher

import 'package:flutter/material.dart';
import 'package:flutter_plant_app/screens/login_page.dart';
import 'package:mobx/mobx.dart';

part 'plant.store.g.dart';

class PlantStore = _PlantStore with _$PlantStore;

abstract class _PlantStore with Store {
  @observable
  String ConfirmText = "";
}
