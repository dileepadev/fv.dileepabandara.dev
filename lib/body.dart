import 'package:flutter/material.dart';

import 'data_values.dart';
import 'app_theme.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 5.0, vertical: 40.0),
      child: Column(
        children: [
          SelectableText(
            'Website Being Updated',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
              color: AppThemeData.textWhite,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SelectableText(
            DataValues.welcomeMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
              color: AppThemeData.textWhite,
            ),
          ),
        ],
      ),
    );
  }
}
