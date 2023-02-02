import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS5Volunteering extends StatelessWidget {
  const DS5Volunteering({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.volunteeringKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.volunteeringTitle,
                description: DataValues.volunteeringDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContainerCard().type3(
                  image: 'flutterscope',
                  title: DataValues.volunteeringOrg1Title,
                  role: DataValues.volunteeringOrg1Role,
                  years: DataValues.volunteeringOrg1Years,
                  values: DataValues.volunteeringOrg1Vales,
                  message: DataValues.linkedinURL.toString(),
                  url: DataValues.linkedinURL,
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                ContainerCard().type3(
                  image: 'mlsa',
                  title: DataValues.volunteeringOrg2Title,
                  role: DataValues.volunteeringOrg2Role,
                  years: DataValues.volunteeringOrg2Years,
                  values: DataValues.volunteeringOrg2Vales,
                  message: DataValues.linkedinURL.toString(),
                  url: DataValues.linkedinURL,
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            Center(
              child: ContainerBanner().type1(
                title1: 'Not only these, there are several places I',
                title2: 'volunteering',
                description:
                    'Click here to visit my volunteering experience >>',
                image: 'image',
                message: 'Volunteering Profile',
                url: DataValues.volunteeringURL,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
