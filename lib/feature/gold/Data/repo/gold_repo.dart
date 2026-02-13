import 'package:dartz/dartz.dart';
import 'package:goldy_app/core/networking/api_constants.dart';
import 'package:goldy_app/core/networking/dio_helper.dart';
import 'package:goldy_app/feature/gold/Data/Models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.glodEndPoint);
      return right(GoldModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
