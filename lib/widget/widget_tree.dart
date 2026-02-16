import 'package:bookmark/widget/appbar_widget.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.blue, // Customize as needed
        elevation: 4, // Customize as needed
      ),
    );
  }
}
