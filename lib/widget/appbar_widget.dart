import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final double elevation;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor = const Color.fromARGB(142, 255, 193, 7),
    this.elevation = 4.0,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Align(
    alignment: Alignment.centerLeft,
    child: Text(title),
  ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
