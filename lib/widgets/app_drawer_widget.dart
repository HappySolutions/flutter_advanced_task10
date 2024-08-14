import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawerWidget extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onClicked;
  const AppDrawerWidget(
      {required this.selectedIndex, required this.onClicked, super.key});

  Color getColor(int index) {
    if (index == selectedIndex) {
      return Colors.indigo;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150.h,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/12.jpg')),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(1),
                  iconColor: getColor(1),
                  textColor: getColor(1),
                  leading: const Icon(Icons.home),
                  title: Text('Home', style: kSubTitleText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(2),
                  iconColor: getColor(2),
                  textColor: getColor(2),
                  leading: const Icon(Icons.settings),
                  title: Text('Experience', style: kSubTitleText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(3),
                  iconColor: getColor(3),
                  textColor: getColor(3),
                  leading: const Icon(Icons.propane),
                  title: Text('Projects', style: kSubTitleText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(4),
                  iconColor: getColor(4),
                  textColor: getColor(4),
                  leading: const Icon(Icons.person),
                  title: Text('About', style: kSubTitleText),
                ),
              ),
            ],
          ),
        )),
        SizedBox(
          height: 90.h,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All Rights Reserved', style: kSectionTitleText),
            ],
          )),
        ),
      ],
    );
  }
}
