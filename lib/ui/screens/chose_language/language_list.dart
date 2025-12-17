import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data_class/language_data/language_data.dart';
import '../../../providers/language_provider/language_provider.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_styles/app_styles.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({super.key});

  @override
  State<LanguageList> createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  var currentLanguageCode = "en";
  @override
  Widget build(BuildContext context) {
    var changeLanguageObject = Provider.of<LanguageProvider>(context);
    var height = MediaQuery.of(context).size.height;
    return Expanded(
      child: ListView.builder(
        itemCount: LanguageData.languageCode.length,
        itemBuilder: (context, index) {
          var selectedIndex =
              currentLanguageCode == LanguageData.languageCode[index];
          return InkWell(
            onTap: () {
              changeLanguageObject.changeLanguage(
                LanguageData.languageCode[index],
              );
              currentLanguageCode = LanguageData.languageCode[index];
              setState(() {});
            },
            child: Container(
              height: height * 0.08,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.primary, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: selectedIndex
                  ? selectedLanguageRow(
                      LanguageData.getLanguageList(context)[index],
                    )
                  : unSelectedText(
                      LanguageData.getLanguageList(context)[index],
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget selectedLanguageRow(String textLanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(18),
          child: Text(textLanguage, style: AppStyles.mediumSecondary16),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Icon(Icons.check, color: AppColors.secondary),
        ),
      ],
    );
  }

  Widget unSelectedText(String textLanguage) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Text(textLanguage, style: AppStyles.mediumSecondary16),
    );
  }
}
