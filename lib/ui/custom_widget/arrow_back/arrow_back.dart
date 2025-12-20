import 'package:flutter/material.dart';

import '../../utils/app_colors/app_colors.dart';

class ArrowBack extends StatelessWidget {
  final VoidCallback onPressed;
  const ArrowBack({super.key,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return
      IconButton(onPressed: onPressed,
        icon: Icon(Icons.arrow_back,color:AppColors.black,size: 32,),
    );
  }
}
