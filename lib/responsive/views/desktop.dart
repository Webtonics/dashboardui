import 'package:dashboard/constants/drawer_menu.dart';
import 'package:dashboard/utils/profile_details.dart';
import 'package:flutter/material.dart';

import '../../constants/app_bar.dart';
import '../../constants/default_background.dart';
import '../../utils/box.dart';
import '../../utils/my_tile.dart';

class DeskTopView extends StatefulWidget {
  const DeskTopView({super.key});

  @override
  State<DeskTopView> createState() => _DeskTopViewState();
}

class _DeskTopViewState extends State<DeskTopView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: defaultBackground,
      body: Row(
        children: [
          Expanded(child: drawerMenu),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
                ),
                const Text(
                  "Activity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
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
          ),
          const Expanded(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ProfileDetail(),
          ))
        ],
      ),
    );
  }
}
