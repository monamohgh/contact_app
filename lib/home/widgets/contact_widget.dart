import 'dart:io';
import 'package:contact_assignment/home/models/contact%20_model.dart';
import 'package:contact_assignment/utils/app_assets.dart';
import 'package:contact_assignment/utils/app_colors.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final ContactModel contact;
  final VoidCallback? onDelete;
  const ContactWidget({super.key, required this.contact, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(16),
      ),
      child: SizedBox(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: SizedBox(
                height: 150,
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.file(File(contact.imagePath!)), // تحويل الـ String إلى File للعرض
                    Positioned(
                      left: 5,
                      bottom: 8,
                      child: Container(
                        alignment: Alignment.center,
                        width: 84,
                        height: 33,
                        decoration: BoxDecoration(
                          color: AppColors.gold,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          contact.name,
                          style: const TextStyle(overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.email, color: AppColors.darkBlue),
                      Text(
                        contact.email,
                        style: AppStyles.medium10darkBlue,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone_in_talk, color: AppColors.darkBlue),
                      Text(contact.phone, style: AppStyles.medium10darkBlue),
                    ],
                  ),
                  const SizedBox(height: 10),
                  deleteButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton deleteButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {
        if (onDelete != null) onDelete!();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.delete, color: AppColors.white),
          Text('Delete', style: AppStyles.medium10white)
        ],
      ),
    );
  }
}