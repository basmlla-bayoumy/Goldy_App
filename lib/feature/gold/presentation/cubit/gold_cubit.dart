import 'package:bloc/bloc.dart';
import 'package:goldy_app/feature/gold/Data/repo/gold_repo.dart';
import 'package:goldy_app/feature/gold/presentation/cubit/gold_states.dart';

class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;
  GoldCubit(this.goldRepo) : super(GoldInitialState());

  Future<void> getGold() async {
    emit(GoldLodingState());
    final res = await goldRepo.getGold();
    res.fold(
      (error) {
        emit(GoldErrorState(errMsg: error));
      },
      (goldmodel) {
        emit(GoldSuccessState(goldModel: goldmodel));
      },
    );
  }
}
