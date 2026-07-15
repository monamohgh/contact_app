import 'package:contact_assignment/home/home_screen.dart';
import 'package:contact_assignment/utils/app_routes.dart';
import 'package:contact_assignment/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   debugShowCheckedModeBanner: false,
      initialRoute:AppRoutes.homeRouteName ,
      routes: {
        AppRoutes.homeRouteName:(context)=>HomeScreen(),
      },
    );
  }
}