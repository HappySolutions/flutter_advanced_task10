import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Top Skills',
          style: kTitleText,
        ),
        SizedBox(height: 15.h),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().screenWidth > 600
                ? 10
                : ScreenUtil().screenWidth / 4,
          ),
          child: const Wrap(
            children: [
              SkillCard(
                url:
                    'https://cdn.iconscout.com/icon/free/png-256/flutter-2038877-1720090.png',
              ),
              SkillCard(
                url:
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png',
              ),
              SkillCard(
                  url:
                      'https://cdn4.iconfinder.com/data/icons/google-i-o-2016/512/google_firebase-2-512.png'),
              SkillCard(
                  url: 'https://cdn-icons-png.flaticon.com/512/226/226777.png'),
              SkillCard(
                  url:
                      'https://cdn.iconscout.com/icon/free/png-256/python-3521655-2945099.png'),
              SkillCard(
                  url:
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Git_icon.svg/1024px-Git_icon.svg.png'),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFC4ACA1),
              blurRadius: 6,
              spreadRadius: 4,
            )
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: SizedBox(
          height: !(ScreenUtil().screenWidth < 600)
              ? ScreenUtil().screenWidth / 6.8
              : 77,
          width: !(ScreenUtil().screenWidth < 600)
              ? ScreenUtil().screenWidth / 6.8
              : 77,
          child: Padding(
            padding: ScreenUtil().screenWidth < 600
                ? const EdgeInsets.all(8.0)
                : const EdgeInsets.all(30.0),
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
