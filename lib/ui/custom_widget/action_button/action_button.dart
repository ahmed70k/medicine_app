import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';
class ActionButton extends StatelessWidget {
  final Widget text;
  final VoidCallback onTap;
   const ActionButton({required this.onTap,required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color:  AppColors.secondary
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: text,
        ),
      ),
    );
  }
}
