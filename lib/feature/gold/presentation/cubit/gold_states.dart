import 'package:goldy_app/feature/gold/Data/Models/gold_model.dart';

abstract class GoldStates {}

class GoldInitialState extends GoldStates {}

class GoldErrorState extends GoldStates {
  final String errMsg;

  GoldErrorState({required this.errMsg});
}

class GoldSuccessState extends GoldStates {
  final GoldModel goldModel;

  GoldSuccessState({required this.goldModel});
}

class GoldLodingState extends GoldStates {}
