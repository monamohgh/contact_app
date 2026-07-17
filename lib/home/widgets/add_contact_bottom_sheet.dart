import 'dart:io';
import 'package:contact_assignment/home/models/contact%20_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:contact_assignment/home/widgets/text_field_widget.dart';
import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:contact_assignment/utils/size_config.dart';

class AddContactBottomSheet extends StatefulWidget {
  const AddContactBottomSheet({super.key});

  @override
  State<AddContactBottomSheet> createState() => _AddContactBottomSheetState();
}

class _AddContactBottomSheetState extends State<AddContactBottomSheet> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  File? selectedImage;
  String userName = 'User Name';
  String userEmail = 'example@email.com';
  String userPhone = '+200000000000';

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  Future pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (returnedImage != null) {
      setState(() {
        selectedImage = File(returnedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        height: SizeConfig.getHeight(context) * .65,
        decoration: BoxDecoration(
          color: AppColors.darkBlue,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.getWidth(context) * .04,
              vertical: SizeConfig.getHeight(context) * .02,
            ),
            child: Column(
              spacing: SizeConfig.getHeight(context) * .015,
              children: [
                Row(
                  spacing: SizeConfig.getWidth(context) * .05,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gold),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      height: SizeConfig.getHeight(context) * .16,
                      width: SizeConfig.getHeight(context) * .16,
                      child: InkWell(
                        onTap: pickImageFromGallery,
                        child: selectedImage != null
                            ? ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.file(
                            selectedImage!,
                            fit: BoxFit.cover,
                          ),
                        )
                            : Lottie.asset(
                          'assets/json/image_picker.json',
                          delegates: LottieDelegates(
                            values: [
                              ValueDelegate.colorFilter(
                                ['Layer 7', 'Group 1', 'Fill 1'],
                                value: ColorFilter.mode(
                                  AppColors.darkBlue,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Column(
                        spacing: SizeConfig.getHeight(context) * .01,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            userName.isEmpty ? 'User Name' : userName,
                            style: AppStyles.medium16Gold,
                          ),
                          Divider(color: AppColors.gold, height: 2),
                          Text(
                            userEmail.isEmpty ? 'example@email.com' : userEmail,
                            style: AppStyles.medium16Gold,
                          ),
                          Divider(color: AppColors.gold, height: 2),
                          Text(
                            userPhone.isEmpty ? '+200000000000' : userPhone,
                            style: AppStyles.medium16Gold,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFieldWidget(
                  hitText: 'Enter User Name',
                  type: TextInputType.name,
                  controller: nameController,
                  onChanged: (newText) {
                    setState(() {
                      userName = newText;
                    });
                  },
                ),

                TextFieldWidget(
                  hitText: 'Enter User Email',
                  type: TextInputType.emailAddress,
                  controller: emailController,
                  onChanged: (newText) {
                    setState(() {
                      userEmail = newText;
                    });
                  },
                ),

                TextFieldWidget(
                  hitText: 'Enter User Phone',
                  type: TextInputType.phone,
                  controller: phoneController,
                  onChanged: (newText) {
                    setState(() {
                      userPhone = newText;
                    });
                  },
                ),
                saveUserButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget saveUserButton() {
    return SizedBox(
      height: SizeConfig.getHeight(context) * 0.06,
      width: SizeConfig.getWidth(context) * 0.9,
      child: ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: AppColors.gold,
          foregroundColor: AppColors.darkBlue,
          textStyle: AppStyles.regular20darkBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text('Enter User'),
      ),
    );
  }
}