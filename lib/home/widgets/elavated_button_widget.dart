import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:contact_assignment/utils/size_config.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.getHeight(context)*0.06,
      width: SizeConfig.getWidth(context)*0.9,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
          backgroundColor: AppColors.gold,
          foregroundColor: AppColors.darkBlue,
          textStyle: AppStyles.regular20darkBlue,
          overlayColor: AppColors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
        child: Text('Enter User'),
      ),
    );
  }
}
