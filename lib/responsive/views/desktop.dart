import 'package:dashboard/constants/drawer_menu.dart';
import 'package:flutter/material.dart';

import '../../constants/app_bar.dart';
import '../../constants/default_background.dart';
import '../../utils/box.dart';
import '../../utils/my_tile.dart';
import '../../widgets/title.dart';

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
          drawerMenu,
          Expanded(
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
        ],
      ),
    );
  }
}
