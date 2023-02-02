import 'package:flutter/material.dart';

import 'theme/responsive_screen_provider.dart';
import 'theme/app_theme.dart';
import 'desktop/df_1_header.dart';
import 'desktop/df_2_about_me.dart';
import 'desktop/df_3_education.dart';
import 'desktop/df_4_experience.dart';
import 'desktop/df_5_volunteering.dart';
import 'desktop/df_6_blog.dart';
import 'desktop/df_7_contact.dart';
import 'desktop/df_8_footer.dart';
import 'mobile/mobile_frame_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dileepa Bandara',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showBackToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              if (_scrollController.offset >= 300) {
                _showBackToTopButton = true;
              } else {
                _showBackToTopButton = false;
              }
            },
          );
        },
      );

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(milliseconds: 1000), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    Widget desktopUI() {
      return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: const [
          DF1Header(),
          DF2AboutMe(),
          DF3Education(),
          DF4Experience(),
          DF5Volunteering(),
          DF7Blog(),
          DF7Contact(),
          DF8Footer(),
        ],
      );
    }

    Widget mobileUI() {
      return const MobileFrame1();
    }

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Container(
          color: AppThemeData.backgroundGrey,
          child: ResponsiveScreenProvider.isDesktopScreen(context)
              ? desktopUI()
              : mobileUI(),
        ),
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              onPressed: _scrollToTop,
              tooltip: 'Go to top',
              backgroundColor: AppThemeData.buttonPrimary,
              foregroundColor: AppThemeData.iconSecondary,
              child: const Icon(
                Icons.arrow_upward_rounded,
              ),
            ),
    );
  }
}

/// TODO: Update new theme apply method
/// TODO: Update common widgets
/// TODO: Add button hover effect
/// TODO: Complete desktop UI frame 1
/// TODO: Complete desktop UI frame 2
/// TODO: Complete desktop UI frame 3
/// TODO: Complete desktop UI frame 4
/// TODO: Complete desktop UI frame 5
/// TODO: Complete desktop UI frame 6
/// TODO: Complete desktop UI frame 7
/// TODO: Complete desktop UI frame 8
/// TODO: Check the responsiveness
/// TODO: Complete mobile UI frame 1
/// TODO: Complete mobile UI frame 2
/// TODO: Complete mobile UI frame 3
/// TODO: Complete mobile UI frame 4
/// TODO: Complete mobile UI frame 5
/// TODO: Complete mobile UI frame 6
/// TODO: Complete mobile UI frame 7
/// TODO: Complete mobile UI frame 8
/// TODO: Check the performance
/// TODO: Check the code quality
/// TODO: Check the code coverage
/// TODO: Check the code complexity
/// TODO: Check the code duplication
/// TODO: Check the code maintainability
/// TODO: Check the code security
/// TODO: Check the code style
/// TODO: Check the code testability
/// TODO: Check the code test coverage
/// TODO: Check the user experience
/// TODO: Update the README.md
/// TODO: Generate the documentation
/// TODO: Create the CHANGELOG.md
/// TODO: Create the community guidelines
/// TODO: Create the release
