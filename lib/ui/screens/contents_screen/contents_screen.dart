import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicine_app/data_class/medicine_option_deta/medicine_option_data.dart';
import 'package:medicine_app/ui/screens/welcome_screen/welcome_screen.dart';
import 'package:medicine_app/ui/utils/app_assets/app_assets.dart';
import 'package:medicine_app/ui/utils/app_colors/app_colors.dart';
import 'package:medicine_app/ui/utils/app_styles/app_styles.dart';

import '../../custom_widgets/base_screen/base_screen.dart';

class ContentsScreen extends StatelessWidget {
  static const String routeName = "contents_screen";
  const ContentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BaseScreen(
      image: Image.asset(AppAssets.background2, fit: BoxFit.fill),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: height * 0.1),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, WelcomeScreen.routeName);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("LogeOut", style: AppStyles.semiBoldSecondary14),
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    height: height * 0.04,
                    width: width * 0.08,
                    child: Icon(Icons.logout, color: AppColors.white, size: 24),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: MedicineOptionModelData.medicineOptionData(
                  context,
                ).length,
                itemBuilder: (context, index) {
                  var options = MedicineOptionModelData.medicineOptionData(
                    context,
                  );
                  var items = options[index];
                  return ListTile(
                    leading: SvgPicture.asset(items.imageIcon,alignment: Alignment.topLeft,),
                    title: Text(items.title,style: AppStyles.semiBoldBlack16,),
                    subtitle: Text(items.supTitle),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => items.screenType,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(child: Image.asset(AppAssets.group7)),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }
}
