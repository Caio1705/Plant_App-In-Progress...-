// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagesPlantsModel _$PagesPlantsModelFromJson(Map<String, dynamic> json) =>
    PagesPlantsModel(
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => PlantsImagesInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      next_page: json['next_page'] as String?,
      page: json['page'] as int,
      per_page: json['per_page'] as int,
    );

Map<String, dynamic> _$PagesPlantsModelToJson(PagesPlantsModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.per_page,
      'photos': instance.photos,
      'next_page': instance.next_page,
    };
