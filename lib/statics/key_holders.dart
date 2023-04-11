import 'package:flutter/material.dart';

class KeyHolders {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  static final GlobalKey aboutKey = GlobalKey();
  static final GlobalKey educationKey = GlobalKey();
  static final GlobalKey experienceKey = GlobalKey();
  static final GlobalKey volunteeringKey = GlobalKey();
  static final GlobalKey technotesKey = GlobalKey();
  static final GlobalKey contactKey = GlobalKey();
  static final GlobalKey footerKey = GlobalKey();
}
