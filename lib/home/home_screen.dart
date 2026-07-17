import 'dart:io';
import 'package:contact_assignment/home/widgets/add_contact_bottom_sheet.dart';
import 'package:contact_assignment/utils/app_assets.dart';
import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:contact_assignment/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  File? selectedImage;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        title: Image(
          image: AssetImage(AppAssets.newLogo),
          width: SizeConfig.getWidth(context) * .29,
          height: SizeConfig.getHeight(context) * .04,
        ),
      ),
      backgroundColor: AppColors.darkBlue,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getWidth(context) * 0.07,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: SizeConfig.getHeight(context) * 0.02,
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                AppColors.gold,
                BlendMode.srcATop,
              ),
              child: Lottie.asset(
                'assets/json/new_list_purple.json',
                animate: false,
              ),
            ),
            Text(
              'There is No Contacts Added Here',
              style: AppStyles.medium20Gold,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) {
              return const AddContactBottomSheet();
            },
          );
        },
        backgroundColor: AppColors.gold,
        child: const Icon(Icons.add),
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
          overlayColor: AppColors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text('Enter User'),
      ),
    );
  }
  Future pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}