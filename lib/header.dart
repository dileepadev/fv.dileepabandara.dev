import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';

import 'data_values.dart';
import 'responsive_screen_provider.dart';
import 'app_theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  Widget customIconButtons(String name, Uri url) {
    Future<void> openLink() async {
      if (!await launchUrl(url)) {
        throw 'Could not launch $url';
      }
      log("Direct to: $url");
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: openLink,
        child: Tooltip(
          message: url.toString(),
          child:
              Image.asset('assets/icons/$name.png', height: 24.0, width: 24.0),
        ),
      ),
    );
  }

  List<Widget> headerData(BuildContext context) {
    return [
      Image.asset('assets/images/logo.png', height: 250.0, width: 250.0),
      ResponsiveScreenProvider.isDesktopScreen(context)
          ? const SizedBox(width: 40.0)
          : const SizedBox(height: 40.0),
      Column(
        children: [
          SelectableText(
            DataValues.greetings,
            style: AppThemeData.darkTheme.textTheme.headlineSmall,
          ),
          SelectableText(
            DataValues.name,
            style: AppThemeData.darkTheme.textTheme.displayMedium,
          ),
          SelectableText(
            DataValues.title,
            style: AppThemeData.darkTheme.textTheme.titleLarge,
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customIconButtons('dev', DataValues.devURL),
              const SizedBox(width: 8.0),
              customIconButtons('hashnode', DataValues.hashnodeURL),
              const SizedBox(width: 8.0),
              customIconButtons('github', DataValues.githubURL),
              const SizedBox(width: 8.0),
              customIconButtons('linkedin', DataValues.linkedinURL),
              const SizedBox(width: 8.0),
              customIconButtons('twitter', DataValues.twitterURL),
              const SizedBox(width: 8.0),
              customIconButtons('youtube', DataValues.youtubeURL),
              const SizedBox(width: 8.0),
              customIconButtons('telegram', DataValues.telegramURL),
              const SizedBox(width: 8.0),
              customIconButtons('facebook', DataValues.facebookURL),
              const SizedBox(width: 8.0),
              customIconButtons('instagram', DataValues.instagramURL),
            ],
          ),
        ],
      ),
    ];
  }

  Widget desktop(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: headerData(context),
    );
  }

  Widget mobile(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: headerData(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: ResponsiveScreenProvider.isDesktopScreen(context)
          ? desktop(context)
          : mobile(context),
    );
  }
}
