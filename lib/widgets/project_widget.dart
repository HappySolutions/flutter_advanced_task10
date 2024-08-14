import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/constants/constants.dart';
import 'package:flutter_advanced_task10/models/project_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  final Project projectData;
  const ProjectWidget({super.key, required this.projectData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: ScreenUtil().screenWidth * 0.4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                projectData.name,
                style: kSectionTitleText,
              ),
            ],
          ),
          Text(projectData.description, style: kdescriptioText),
          const Divider(),
          Align(
            alignment: Alignment.bottomLeft,
            child: ElevatedButton(
              onPressed: () async {
                final Uri url = Uri.parse(projectData.link);
                await launchUrl(url);
              },
              child: Text(
                "View Project",
                style: kSubTitleText,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
