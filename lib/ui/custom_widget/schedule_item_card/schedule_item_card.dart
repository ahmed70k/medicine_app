import 'package:flutter/material.dart';
import 'package:medicine_app/data_class/schedule_model_class/schedule_model_class.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

class ScheduleItemCard extends StatelessWidget {
  const ScheduleItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.3/1.8,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ScheduleModelClass.scheduleModelClass(context).length,
        itemBuilder: (context, index) {
          var items = ScheduleModelClass.scheduleModelClass(context);
          var options = items[index];
          return Column(
            children: [
              Card(
                shadowColor: AppColors.primary,
                color: AppColors.white,
                shape: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.white),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          options.leadingIcon,
                          SizedBox(width: width * 0.4),
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.secondary,
                              borderRadius: BorderRadius.all(
                                Radius.circular(33),
                              ),
                            ),
                            child: options.headerIcon,
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.03),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(options.title, style: AppStyles.semiboldBlack15),
                          Row(
                            children: [
                              Text(
                                options.supTitle,
                                style: AppStyles.regularBlack14,
                              ),
                              SizedBox(width: width * 0.1),
                              options.editableIcon,
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
