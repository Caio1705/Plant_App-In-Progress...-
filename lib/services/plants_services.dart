import 'package:dio/dio.dart';
import 'package:flutter_plant_app/models/pages_model.dart';
import 'package:flutter_plant_app/models/plants_images_info.dart';
import 'package:flutter_plant_app/shared/constants.dart';

import 'package:retrofit/http.dart';

part 'plants_services.g.dart';

@RestApi(baseUrl: Constants.URL)
abstract class PlantsServices {
  factory PlantsServices(Dio dio, {String baseUrl}) = _PlantsServices;
//PlantsModel
  @GET('search?query={query}&per_page={page}')
  Future<PagesPlantsModel> getPlants(@Header("Authorization") String apiKey,
      @Path() String query, @Path() int page);
}
