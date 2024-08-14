import 'package:flutter/material.dart';
import 'package:flutter_advanced_task10/pages/home/widgets/desktop_widget.dart';
import 'package:flutter_advanced_task10/pages/home/widgets/mobile_widget.dart';
import 'package:flutter_advanced_task10/widgets/app_builder_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppBuilderWidget(
            desktop: (ctx) => const DesktopWidget(),
            tablet: (ctx) => const DesktopWidget(),
            mobile: (ctx) => const MobileWidget()));
  }
}
