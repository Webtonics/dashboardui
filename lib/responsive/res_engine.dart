import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileView,
      required this.tabView,
      required this.desktopView});
  final Widget mobileView;
  final Widget tabView;
  final Widget desktopView;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1080) {
        return desktopView;
      } else if ((constraints.maxWidth >= 400) &&
          (constraints.maxWidth <= 1079)) {
        return tabView;
      } else {
        return mobileView;
      }
    });
  }
}
