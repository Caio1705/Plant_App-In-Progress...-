// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlantStore on _PlantStore, Store {
  late final _$ConfirmTextAtom =
      Atom(name: '_PlantStore.ConfirmText', context: context);

  @override
  String get ConfirmText {
    _$ConfirmTextAtom.reportRead();
    return super.ConfirmText;
  }

  @override
  set ConfirmText(String value) {
    _$ConfirmTextAtom.reportWrite(value, super.ConfirmText, () {
      super.ConfirmText = value;
    });
  }

  @override
  String toString() {
    return '''
ConfirmText: ${ConfirmText}
    ''';
  }
}
