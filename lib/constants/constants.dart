import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/models/project_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color kGrey = const Color(0xFF334055);
Color kPrimaryColor = const Color(0xFF334055);
Color kWhite = Colors.white;
Color kBlack = Colors.black;

TextStyle kTitleText = GoogleFonts.poppins(
  color: Colors.black,
  fontSize: 20.0.sp,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 12.0.sp,
);

TextStyle kSectionTitleText = GoogleFonts.montserrat(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 18.0.sp,
);


List<Project> projectList = [
  Project(
      name: "Project 1",
      description:
          "Description for project 1.",
      link: ""),
  Project(
      name: "Project 2",
      description:
          "Description for project 2.",
      link: ""),
  Project(
      name: "Project 3",
      description:
          "Description for project 3.",
      link: ""),
  Project(
      name: "Project 4",
      description: "Description for project 4",
      link: "")
];
