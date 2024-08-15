import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().screenWidth > 600 ? 40 : 80),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Center(
                child: Text(
                  'Welcome To My Space',
                  style: kTitleText,
                ),
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis nesciunt excepturi quos obcaecati incidunt voluptatem ipsam sunt ipsum, autem deleniti cupiditate molestias quis unde quae totam porro dicta iure animi inventore, veniam hic! Omnis nulla, delectus a voluptatibus',
              style: kSubTitleText,
              textAlign: TextAlign.justify,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Consequuntur nostrum dolor minus, libero delectus praesentium perferendis',
                style: kSubTitleText,
                textAlign: TextAlign.justify,
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet consectetur adipisicing elit. Vero, consequuntur labore? Ea totam voluptas amet!',
              style: kSubTitleText,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
