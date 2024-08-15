import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Location",
            style: kSubTitleText,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 16,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text('Giza, Egypt', style: kdescriptioText)
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Website",
            style: kSubTitleText,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 16,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text('website', style: kdescriptioText),
              SizedBox(
                width: 5.w,
              ),
              const Icon(
                Icons.launch,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Portfolio",
            style: kSubTitleText,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 16,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text('portfolio', style: kdescriptioText),
              SizedBox(
                width: 5.w,
              ),
              const Icon(
                Icons.launch,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Email",
            style: kSubTitleText,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              const Icon(
                Icons.circle,
                size: 16,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text('email', style: kdescriptioText),
              SizedBox(
                width: 5.w,
              ),
              const Icon(
                Icons.launch,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ]),
      ),
    );
  }
}
