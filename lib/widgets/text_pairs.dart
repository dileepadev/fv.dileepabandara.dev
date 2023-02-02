import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class TextPairs {
  Widget type1({required String title, required String description}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SelectableText(title,
                style: AppThemeData.darkTheme.textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: 10.0),
        SelectableText(description,
            style: AppThemeData.darkTheme.textTheme.labelLarge),
      ],
    );
  }

  Widget type2(
      {required String title,
      required String value1,
      required String value2,
      required bool isThreeLines}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.titleSmall!.fontWeight,
              color: AppThemeData.textWhite),
        ),
        SelectableText(
          value1,
          style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
              color: AppThemeData.textGreyDark),
        ),
        isThreeLines ? const SizedBox(height: 20.0) : Container(),
        SelectableText(
          value2,
          style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
              color: AppThemeData.textGreyDark),
        ),
      ],
    );
  }

  Widget type3(
      {required String title, required String value1, required String value2}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          title,
          style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.titleSmall!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.titleSmall!.fontWeight,
              color: AppThemeData.textWhite),
        ),
        SelectableText(
          value1,
          style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
              color: AppThemeData.textGreyDark),
        ),
        const SizedBox(height: 20.0),
        SelectableText(
          value2,
          style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
              color: AppThemeData.textGreyDark),
        ),
      ],
    );
  }
}
