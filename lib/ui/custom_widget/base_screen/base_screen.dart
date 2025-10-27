import 'package:flutter/material.dart';
class BaseScreen extends StatelessWidget {
  final Widget image;
  final Widget child;
  final PreferredSizeWidget? appBar;
  const BaseScreen({super.key, required this.child, required this. image, this.appBar,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Stack(
        children: [
          Positioned.fill(child: image),
          child,
        ],
      ),
    );
  }
}
