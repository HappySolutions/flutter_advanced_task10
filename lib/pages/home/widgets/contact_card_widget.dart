import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_advanced_task10/widgets/app_builder_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Get In Touch With Me',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: ScreenUtil().screenWidth / 2,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFC4ACA1),
                  blurRadius: 4,
                  spreadRadius: 2,
                )
              ],
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: kSubTitleText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      style: kSubTitleText,
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Name',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  Text(
                    'Email',
                    style: kSubTitleText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      style: kSubTitleText,
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Email',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10)),
                    ),
                  ),
                  Text(
                    'Message',
                    style: kSubTitleText,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      style: kSubTitleText,
                      minLines: 10,
                      maxLines: 15,
                      decoration: const InputDecoration(
                          hintText: 'Enter Your Message',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF4756DF),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10.0)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Submit',
                              style: kSubTitleText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
