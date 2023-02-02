import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import 'button_rectangle.dart';
import 'button_text.dart';

class NavBar {
  Widget desktopNavBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonTextLarge(
          text: 'About Me',
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.aboutKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to about me section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: 'Education',
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.educationKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to education section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: 'Experience',
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.experienceKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to experience section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: 'Volunteering',
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.volunteeringKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to volunteering section',
        ),
        const SizedBox(width: 20.0),
        ButtonTextLarge(
          text: 'Blog',
          onPressed: () => Scrollable.ensureVisible(
            KeyHolders.blogKey.currentContext!,
            duration: const Duration(milliseconds: 1000),
          ),
          message: 'Go to blog section',
        ),
        const SizedBox(width: 20.0),
        ButtonRectangle(
            name: "Contact Me",
            onPressed: () => Scrollable.ensureVisible(
                  KeyHolders.contactKey.currentContext!,
                  duration: const Duration(milliseconds: 1000),
                ),
            color: AppThemeData.buttonPrimary,
            message: 'Go to contact me section'),
      ],
    );
  }

  Widget mobileNavBar() {
    Widget miniHeader() {
      return Column(
        children: [
          Image.asset('assets/images/logo.png', height: 80.0, width: 80.0),
          const SizedBox(height: 10.0),
          SelectableText(
            DataValues.headerName,
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: AppThemeData.darkTheme.textTheme.titleLarge?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SelectableText(
            DataValues.headerTitle,
            style: AppThemeData.darkTheme.textTheme.labelLarge,
          ),
        ],
      );
    }

    return Drawer(
      backgroundColor: AppThemeData.backgroundBlack,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 60.0),
          miniHeader(),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: 'About Me',
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.aboutKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to about me section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: 'Education',
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.educationKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to education section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: 'Experience',
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.experienceKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to experience section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: 'Volunteering',
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.volunteeringKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to volunteering section',
          ),
          const SizedBox(height: 20.0),
          ButtonTextLarge(
            text: 'Blog',
            onPressed: () => Scrollable.ensureVisible(
              KeyHolders.blogKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
            ),
            message: 'Go to blog section',
          ),
          const SizedBox(height: 20.0),
          ButtonRectangle(
              name: "Contact Me",
              onPressed: () => Scrollable.ensureVisible(
                    KeyHolders.contactKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                  ),
              color: AppThemeData.buttonPrimary,
              message: 'Go to contact me section'),
        ],
      ),
    );
  }
}
