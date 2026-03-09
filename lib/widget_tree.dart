import 'package:flutter/material.dart';
import 'package:bookmark/widget/appbar_widget.dart';
import 'package:bookmark/widget/nevbar_widget.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "BOOKMARK",
      ),
      bottomNavigationBar: const NavBarWidget(),
    );
  }
}
