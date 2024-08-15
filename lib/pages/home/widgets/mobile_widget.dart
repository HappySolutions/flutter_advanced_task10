import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_advanced_task10/pages/home/widgets/about_card_widget.dart';
import 'package:flutter_advanced_task10/pages/home/widgets/contact_card_widget.dart';
import 'package:flutter_advanced_task10/pages/home/widgets/info_widget.dart';
import 'package:flutter_advanced_task10/pages/home/widgets/skills_card_widget.dart';
import 'package:flutter_advanced_task10/widgets/app_bar_widget.dart';
import 'package:flutter_advanced_task10/widgets/app_drawer_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileWidget extends StatefulWidget {
  const MobileWidget({super.key});

  @override
  State<MobileWidget> createState() => _MobileWidgetState();
}

class _MobileWidgetState extends State<MobileWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 1;
  Map<int, Widget> indexWidgetMap = {
    1: const InfoCard(),
    2: const SkillsCard(),
    3: Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
          5,
          (index) => SizedBox(
                height: 160.h,
                width: 160.w,
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
                            SizedBox(
                              width: 10.w,
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
    4: const SingleChildScrollView(
        child: Column(children: [
      AboutCard(),
      ContactCard(),
    ]))
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          child: AppDrawerWidget(
            selectedIndex: selectedIndex,
            onClicked: (index) {
              setState(() {
                selectedIndex = index;
              });
              _scaffoldKey.currentState?.closeDrawer();
            },
          ),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: indexWidgetMap[selectedIndex],
        )),
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple,
                      Colors.pinkAccent,
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(3, 0),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: const Icon(Icons.menu, color: Colors.white),
                    ),
                    const Expanded(child: AppBarWidget()),
                  ],
                ),
              ),
            )));
  }
}
