import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Heba Mohamed',
            style: kTitleText.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
