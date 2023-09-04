import 'package:flutter/material.dart';

import '../screens/about.dart';
import '../screens/dash_board.dart';
import '../screens/log_out.dart';
import '../screens/settings.dart';
import '../widgets/menu_icons.dart';

var drawerMenu = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: const [
      DrawerHeader(
        child: Center(
          child: Text(
            "Dashboard UI",
            style: TextStyle(
                color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      MenuList(title: "Dashboard", icon: Icons.home, page: DashboardView()),
      MenuList(
        title: "About",
        icon: Icons.info,
        page: AboutView(),
      ),
      MenuList(
        title: "Settings",
        icon: Icons.settings,
        page: SettingsView(),
      ),
      MenuList(
        title: "Logout",
        icon: Icons.logout,
        page: LogoutView(),
      ),
    ],
  ),
);
