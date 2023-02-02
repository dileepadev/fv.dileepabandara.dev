import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

import '../theme/app_theme.dart';
import 'button_rectangle.dart';

class ContainerBanner {
  Widget type1(
      {required bool isDesktop,
      required String title1,
      required String title2,
      required String description,
      required String image,
      required String message,
      required Uri url}) {
    return Container(
      color: AppThemeData.backgroundGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isDesktop
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SelectableText(
                          title1,
                          style: TextStyle(
                            fontSize: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontSize,
                            fontWeight: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontWeight,
                            color: AppThemeData.textWhite,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        SelectableText(
                          title2,
                          style: TextStyle(
                            fontSize: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontSize,
                            fontWeight: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontWeight,
                            color: AppThemeData.textPrimary,
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SelectableText(
                          title1,
                          style: TextStyle(
                            fontSize: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontSize,
                            fontWeight: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontWeight,
                            color: AppThemeData.textWhite,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        SelectableText(
                          title2,
                          style: TextStyle(
                            fontSize: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontSize,
                            fontWeight: AppThemeData
                                .darkTheme.textTheme.titleLarge!.fontWeight,
                            color: AppThemeData.textPrimary,
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 5.0),
              SelectableText(
                description,
                style: TextStyle(
                  fontSize:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
                  fontWeight:
                      AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
                  color: AppThemeData.textGreyDark,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          ButtonRectangle(
            name: message,
            color: AppThemeData.buttonSecondary,
            message: url.toString(),
            onPressed: () async {
              if (!await launchUrl(url)) {
                throw 'Could not launch $url';
              }
              log("Direct to: $url");
            },
          )
        ],
      ),
    );
  }

  Widget type2({required String message, required Uri url}) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async {
          if (!await launchUrl(url)) {
            throw 'Could not launch $url';
          }
          log("Direct to: $url");
        },
        child: Tooltip(
          message: url.toString(),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AppThemeData.darkTheme.textTheme.labelLarge!.fontSize,
              fontWeight:
                  AppThemeData.darkTheme.textTheme.labelLarge!.fontWeight,
              color: AppThemeData.textGreyDark,
            ),
          ),
        ),
      ),
    );
  }
}
