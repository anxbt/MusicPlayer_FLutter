import 'package:flutter/material.dart';

class CommonNavbar extends StatelessWidget {
  final String title;
  final IconData leadingIcon;

  CommonNavbar({required this.title, required this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.transparent,
      leading: Icon(leadingIcon),
      actions: [
        const Text("Hello, anxbrt",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.notifications)),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}