import 'package:bloc/bloc.dart';
import 'package:goldy_app/feature/silver/Data/repo/silver_repo.dart';
import 'package:goldy_app/feature/silver/presentation/cubit/silver_states.dart';

class SilverCubit extends Cubit<SilverStates>{
  final SilverRepo silverRepo;
  SilverCubit(this.silverRepo) : super(SilverInitialState());

   Future<void> getSilver() async {
    emit(SilverLodingState());
    final res = await silverRepo.getSilver();
    res.fold(
      (error) {
        emit(SilverErrorState(errMsg: error));
      },
      (silvermodel) {
        emit(SilverSuccessState(silverModel: silvermodel));
      },
    );
  }
}