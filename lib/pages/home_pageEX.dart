import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_advanced_task10/widgets/project_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageEX extends StatefulWidget {
  const HomePageEX({super.key});

  @override
  State<HomePageEX> createState() => _HomePageEXState();
}

class _HomePageEXState extends State<HomePageEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ScreenUtil().screenWidth,
              height: 200.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.purple,
                    Colors.pinkAccent,
                  ],
                ),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/12.jpg'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Center(
              child: Text(
                'Heba Mohamed',
                style: kTitleText,
              ),
            ),
            Center(
              child: Text(
                "@HappySolutions",
                style: kSubTitleText,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                    onPressed: () async {
                      final Uri url = Uri.parse('www.google.com');
                      await launchUrl(url);
                    },
                    child: Text(
                      "View Resume",
                      style: kSubTitleText,
                    )),
                SizedBox(
                  width: 10.w,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final Uri emailLaunchUri = Uri(
                        scheme: 'mailto',
                        path: 'HappySolutions.dev@gmail.com',
                      );
                      await launchUrl(emailLaunchUri);
                    },
                    child: Text(
                      "Contact",
                      style: kSubTitleText.copyWith(color: Colors.white),
                    ))
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: SizedBox(
                width: ScreenUtil().screenWidth * 0.8,
                child: ScreenUtil().screenWidth > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text('aboutWorkExperience',
                                    style: kdescriptioText),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text('aboutMeSummary', style: kdescriptioText),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
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
                                              Text('location',
                                                  style: kdescriptioText)
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "Website",
                                            style: kSubTitleText,
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text('website',
                                                  style: kdescriptioText),
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
                                              Text('portfolio',
                                                  style: kdescriptioText),
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
                                              Text('email',
                                                  style: kdescriptioText),
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
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('aboutWorkExperience',
                                  style: kdescriptioText),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('aboutMeSummary', style: kdescriptioText),
                            ],
                          ),
                          Card(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 40),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
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
                                        Text('location', style: kdescriptioText)
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
                                        Text('portfolio',
                                            style: kdescriptioText),
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
                          ),
                        ],
                      ),
              ),
            ),
            Center(
              child: SizedBox(
                  width: ScreenUtil().screenWidth * 0.8,
                  child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:
                              ScreenUtil().screenWidth > 1000 ? 3 : 2),
                      itemCount: projectList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ProjectWidget(
                          projectData: projectList[index],
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
