import 'package:dashboard/responsive/res_engine.dart';
import 'package:dashboard/responsive/views/desktop.dart';
import 'package:dashboard/responsive/views/mobile.dart';
import 'package:dashboard/responsive/views/tablet.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dashboard UI",
      // theme: ThemeData(
      //   primarySwatch: Colors.grey,
      // ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Provider"),
        //   backgroundColor: Colors.black,
        //   elevation: 1,
        // ),
        // endDrawer: const Drawer(
        //   child: DrawerHeader(child: Center(child: Text("Dashboard UI"))),
        // ),
        body: ResponsiveLayout(
            mobileView: MobileView(),
            tabView: TabletView(),
            desktopView: DeskTopView()),
      ),
    );
  }
}
