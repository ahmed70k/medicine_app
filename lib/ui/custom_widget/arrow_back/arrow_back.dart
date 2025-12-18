import 'package:flutter/material.dart';

import '../../utils/app_colors/app_colors.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return
      IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon:
      Icon(Icons.arrow_back,color:AppColors.black,size: 32,),
    );
  }
}
