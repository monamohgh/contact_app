import 'dart:io';

class ContactModel {
  String name;
  String email;
  String phone;
  String? imagePath;

  ContactModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.imagePath,
  });
}
