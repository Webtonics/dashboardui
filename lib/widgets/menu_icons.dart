import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList(
      {super.key, required this.title, required this.icon, required this.page});

  final String title;
  final IconData icon;
  final Widget page;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => page)),
    );
  }
}
