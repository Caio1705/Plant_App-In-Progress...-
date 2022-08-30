import 'package:flutter_plant_app/models/src_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plants_images_info.g.dart';

@JsonSerializable()
class PlantsImagesInfo {
  String? photographer;
  String? photographer_url;
  String? url;
  int? photographer_id;
  String? avg_color;
  int? id;
  int? width;
  int? height;
  bool? liked;

  SrcModel? src;

  String? alt;
  PlantsImagesInfo({
    this.width,
    this.height,
    this.url,
    this.id,
    this.src,
    this.alt,
    this.photographer,
    this.photographer_url,
    this.photographer_id,
    this.avg_color,
  });

  factory PlantsImagesInfo.fromJson(Map<String, dynamic> json) =>
      _$PlantsImagesInfoFromJson(json);
  Map<String, dynamic> toJson() => _$PlantsImagesInfoToJson(this);
}
