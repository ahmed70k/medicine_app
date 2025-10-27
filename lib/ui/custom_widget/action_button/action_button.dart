import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';

class ActionButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onTap;
  final double borderRadius;
  const ActionButton({
    required this.onTap,
    required this.text,
    super.key,
    this.borderRadius = 10.0,
  });
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColors.secondary,
        ),
        child: text,
      ),
    );
  }
}
