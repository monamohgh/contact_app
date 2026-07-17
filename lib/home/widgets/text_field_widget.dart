import 'package:contact_assignment/home/home_screen.dart';
import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
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
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:widget.onChanged,
      controller: widget.controller,
      style: AppStyles.regular16lightBlue,
      keyboardType: widget.type,
      decoration: InputDecoration(
        hintText: widget.hitText,
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