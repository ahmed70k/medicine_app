import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';

class TextForm extends StatelessWidget {
  final Widget? prefixIcon ;
  final String? hintText;
 final TextStyle? hintStyle;
   const TextForm({super.key,this.prefixIcon,this.hintText,this.hintStyle});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        border: InputBorder.none,
          hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.secondary),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.reed),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
