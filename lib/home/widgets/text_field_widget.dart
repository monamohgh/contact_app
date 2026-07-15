import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  String hitText;
  TextInputType type;
   TextFieldWidget({super.key,required this.hitText, required this.type});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.regular16lightBlue,
      keyboardType: type,
      cursorColor: AppColors.gold,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.gold),
        borderRadius: BorderRadius.circular(16),
      ),
      hintText: hitText,
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: AppColors.red)
      ),
      fillColor: AppColors.darkBlue,
      hintStyle: AppStyles.regular16lightBlue,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(width: 2,color: AppColors.gold),
      )
    ),
    );
  }
}
