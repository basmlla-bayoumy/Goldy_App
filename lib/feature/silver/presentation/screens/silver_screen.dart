import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_images.dart';
import 'package:goldy_app/feature/silver/Data/repo/silver_repo.dart';
import 'package:goldy_app/feature/silver/presentation/cubit/silver_cubit.dart';
import 'package:goldy_app/feature/silver/presentation/cubit/silver_states.dart';
import 'package:goldy_app/feature/silver/presentation/screens/widgets/custom_sText.dart';

class SilverScreen extends StatelessWidget {
  const SilverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SilverCubit(SilverRepo())..getSilver();
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true,
          title: Text(
            'Silver',
            style: TextStyle(
              color: AppColors.silverColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: BlocBuilder<SilverCubit, SilverStates>(
          builder: (context, state) {
            if (state is SilverLodingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is SilverErrorState) {
              return Center(child: Text(state.errMsg));
            } else if (state is SilverSuccessState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.silver, width: 200, height: 250),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomStext(
                        text: state.silverModel.name,
                        color: AppColors.silverColor,
                      ),
                      CustomStext(
                        text:  state.silverModel.price.toString(),
                        color: AppColors.silverColor,
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
