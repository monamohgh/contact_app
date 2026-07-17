// import 'package:contact_assignment/home/models/contact%20_model.dart';
// import 'package:contact_assignment/home/widgets/contact_widget.dart';
// import 'package:contact_assignment/utils/app_assets.dart';
// import 'package:contact_assignment/utils/app_colors.dart';
// import 'package:flutter/material.dart';
//
// import '../utils/size_config.dart';
//
// class TestScreen extends StatelessWidget {
//   const TestScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.darkBlue,
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 0.58,
//           crossAxisSpacing: 16,
//           mainAxisSpacing: 16,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//            return ContactWidget(contact:ContactModel(name: 'name', email: 'email', phone: 'phone', imagePath: AppAssets.person4) ,);
//         },
//       ),
//     );
//   }
// }
