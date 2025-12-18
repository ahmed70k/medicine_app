import 'package:flutter/material.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

class MedicationType extends StatelessWidget {
  final Widget imageType;
  final String medicationName;
  const MedicationType({
    super.key,
    required this.imageType,
    required this.medicationName,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.secondary,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            width: 92,
            height: 76,
            child: imageType,
          ),
          SizedBox(height: height * 0.01,),
          Text(medicationName,style: AppStyles.semiBoldBlack16,),
        ],
      ),
    );
  }
}
