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

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: WidgetStateColor.resolveWith((states) => kGrey),
    foregroundColor: WidgetStateColor.resolveWith(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.hovered)) return Colors.black;
        if (states.contains(WidgetState.focused) ||
            states.contains(WidgetState.pressed)) return Colors.white;
        return kGrey; // Defer to the widget's default.
      },
    ),
  ),
);
List<Project> projectList = [
  Project(
      name: "Shades",
      description:
          "Winner IEEE Mandi 'Go Online' Challenge at Electrothon, NIT Hamirpur.",
      link: "https://github.com/adityathakurxd/shades"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Flutter Portfolio",
      description: "A template for Portfolio",
      link: "https://github.com/adityathakurxd/flutter-portfolio")
];
