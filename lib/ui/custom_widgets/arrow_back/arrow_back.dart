import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

import '../../utils/app_colors/app_colors.dart';

class ArrowBack extends StatelessWidget {
  final VoidCallback onPressed;
  String? titleScreen;
  ArrowBack({super.key, required this.onPressed,this.titleScreen});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.arrow_back, color: AppColors.black, size: 32),
        ),
        SizedBox(width: width * 0.04,),
        Text(titleScreen!,style: AppStyles.semiboldBlack24,),
      ],
    );
  }
}
