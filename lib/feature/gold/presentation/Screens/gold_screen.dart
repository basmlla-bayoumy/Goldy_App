import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/feature/gold/Data/repo/gold_repo.dart';
import 'package:goldy_app/feature/gold/presentation/Screens/widgets/custom_text.dart';
import 'package:goldy_app/feature/gold/presentation/cubit/gold_cubit.dart';
import 'package:goldy_app/feature/gold/presentation/cubit/gold_states.dart';

class GoldScreen extends StatelessWidget {
  const GoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return GoldCubit(GoldRepo())..getGold();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'Gold',
            style: TextStyle(
              color: AppColors.goldColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<GoldCubit, GoldStates>(
          builder: (context, state) {
            if (state is GoldLodingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is GoldErrorState) {
              return Center(
                child: Text(
                  state.errMsg,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            } else if (state is GoldSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.gold, width: 200, height: 250),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: state.goldModel.name,
                        color: AppColors.goldColor,
                      ),
                      CustomText(
                        text: state.goldModel.price.toString(),
                        color: AppColors.goldColor,
                      ),
                    ],
                  ),
                ],
              );
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
