import 'package:contact_assignment/home/home_screen.dart';
import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hitText;
  final TextInputType type;
   final TextEditingController controller;
   void Function(String) onChanged;

   TextFieldWidget({
    super.key,
    required this.hitText,
    required this.type,
    required this .controller,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onChanged,
      controller: controller,
      style: AppStyles.regular16lightBlue,
      keyboardType: type,
      decoration: InputDecoration(
        hintText: hitText,
        hintStyle: TextStyle(color: AppColors.gold.withOpacity(0.5)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.gold),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.gold, width: 2),
        ),
      ),
    );
  }
}