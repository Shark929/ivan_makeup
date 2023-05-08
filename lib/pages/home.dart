import 'package:flutter/material.dart';
import 'package:single_page_website/pages/desktop_view.dart';
import 'package:single_page_website/pages/mobile_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        return const DesktopView();
      } else {
        return const MobileView();
      }
    });
  }
}
