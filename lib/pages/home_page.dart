import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_advanced_task10/widgets/project_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
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
                    // style: elevatedButtonThemeData,
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
            const SizedBox(
              height: 10,
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
                                const Text('aboutWorkExperience'),
                                const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                SizedBox(
                                  height: 10.h,
                                ),
                                const Text('aboutMeSummary'),
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
                                              const Text(
                                                'location',
                                              )
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
                                              const Text('website'),
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
                                              const Text('portfolio'),
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
                                              const Text('email'),
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
                              const Text('aboutWorkExperience'),
                              const Divider(),
                              Text("About Me", style: kSectionTitleText),
                              SizedBox(
                                height: 10.h,
                              ),
                              const Text('aboutMeSummary'),
                            ],
                          ),
                          Column(
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
                                            const Text(
                                              'location',
                                            )
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
                                            const Text('website'),
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
                                            const Text('portfolio'),
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
                                            const Text('email'),
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
