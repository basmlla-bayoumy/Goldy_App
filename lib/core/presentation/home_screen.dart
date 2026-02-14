import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';
import 'package:goldy_app/core/constants/app_strings.dart';
import 'package:goldy_app/core/routing/routers.dart';
import 'package:goldy_app/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: AppStrings.gold,
            onPressed: () {
              Navigator.pushNamed(context, Routers.goldscreen);
            },
            color: AppColors.goldColor,
          ),
          SizedBox(height: 15),
          CustomButton(
            text: AppStrings.silver,
            onPressed: () {
               Navigator.pushNamed(context, Routers.silverscreen);
            },
            color: AppColors.silverColor,
          ),
        ],
      ),
    );
  }
}
