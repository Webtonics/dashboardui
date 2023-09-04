import 'package:dashboard/screens/about.dart';
import 'package:dashboard/screens/dash_board.dart';
import 'package:dashboard/screens/settings.dart';
import 'package:dashboard/utils/box.dart';
import 'package:dashboard/utils/my_tile.dart';
import 'package:dashboard/widgets/menu_icons.dart';
import 'package:flutter/material.dart';

import '../../constants/app_bar.dart';
import '../../constants/drawer_menu.dart';
import '../../screens/log_out.dart';
import '../../widgets/title.dart';

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: Colors.grey[300],
      drawer: drawerMenu,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),
          const Text(
            "Activity",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const MyTile();
              },
            ),
          )
        ],
      ),
    );
  }
}
