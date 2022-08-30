import 'package:flutter_plant_app/models/plants_images_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pages_model.g.dart';

@JsonSerializable()
class PagesPlantsModel {
  int page;
  int per_page;
  List<PlantsImagesInfo>? photos;
  String? next_page;

  PagesPlantsModel({
    this.photos,
    this.next_page,
    required this.page,
    required this.per_page,
  });

  factory PagesPlantsModel.fromJson(Map<String, dynamic> json) =>
      _$PagesPlantsModelFromJson(json);
  Map<String, dynamic> toJson() => _$PagesPlantsModelToJson(this);
}
