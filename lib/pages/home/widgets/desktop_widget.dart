import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_advanced_task10/widgets/app_bar_widget.dart';
import 'package:flutter_advanced_task10/widgets/app_drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopWidget extends StatefulWidget {
  const DesktopWidget({super.key});

  @override
  State<DesktopWidget> createState() => _DesktopWidgetState();
}

class _DesktopWidgetState extends State<DesktopWidget> {
  int selectedIndex = 1;
  Map<int, Widget> indexWidgetMap = {
    1: const Text('Home'),
    2: const Text('Experience'),
    3: Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
          5,
          (index) => SizedBox(
                height: 150.h,
                width: 150.w,
                child: PhysicalModel(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 5,
                  color: Colors.white,
                  shadowColor: Colors.black12,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.build,
                              color: kGrey,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'projectData.name',
                              style: kSectionTitleText,
                            ),
                          ],
                        ),
                        Text('projectData.description', style: kdescriptioText),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: ElevatedButton(
                            onPressed: () async {
                              final Uri url = Uri.parse('projectData.link');
                              await launchUrl(url);
                            },
                            child: Text(
                              "View Project",
                              style: kSubTitleText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
    ),
    4: const Text('About')
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: ScreenUtil().screenWidth / 3,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(3, 0),
            )
          ]),
          child: AppDrawerWidget(
              selectedIndex: selectedIndex,
              onClicked: (index) {
                setState(() {
                  selectedIndex = index;
                });
              }),
        ),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Container(
                    height: 100.h,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(13, 0),
                      )
                    ]),
                    child: const AppBarWidget()),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: ScreenUtil().screenWidth / 1.5,
                      ),
                      child: indexWidgetMap[selectedIndex],
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
