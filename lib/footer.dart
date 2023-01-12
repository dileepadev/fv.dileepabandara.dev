import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'data_values.dart';
import 'app_theme.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  Widget getSourceCode(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchUrl(DataValues.repoURL);
        },
        child: Tooltip(
          message: DataValues.repoURL.toString(),
          child: Text(
            'Get Source Code',
            style: TextStyle(
              color: AppThemeData.primaryColor,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundBlack,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                DataValues.builtWith,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                width: 5,
              ),
              getSourceCode(context),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SelectableText(
            DataValues.copyright,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
