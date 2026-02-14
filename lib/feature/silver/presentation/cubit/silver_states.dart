
import 'package:goldy_app/feature/silver/Data/Models/silver_model.dart';

abstract class SilverStates {}

class SilverInitialState extends SilverStates {}

class SilverErrorState extends SilverStates {
  final String errMsg;

  SilverErrorState({required this.errMsg});
}

class SilverSuccessState extends SilverStates {
  final SilverModel silverModel;

  SilverSuccessState({ required this.silverModel});
}

class SilverLodingState extends SilverStates {}
