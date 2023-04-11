import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_banner.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS5Volunteering extends StatelessWidget {
  const MS5Volunteering({Key? key}) : super(key: key);

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
            const SizedBox(height: 30.0),
            ContainerCard().type3(
              image: 'flutterscope',
              title: DataValues.volunteeringOrg1Title,
              role: DataValues.volunteeringOrg1Role,
              years: DataValues.volunteeringOrg1Years,
              values: DataValues.volunteeringOrg1Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'mlsa',
              title: DataValues.volunteeringOrg2Title,
              role: DataValues.volunteeringOrg2Role,
              years: DataValues.volunteeringOrg2Years,
              values: DataValues.volunteeringOrg2Vales,
              message: DataValues.linkedinURL.toString(),
              url: DataValues.linkedinURL,
              isButtonEnabled: true,
            ),
            const SizedBox(height: 40.0),
            Center(
              child: ContainerBanner().type1(
                isDesktop: true,
                title1: DataValues.volunteeringBanner,
                title2: DataValues.volunteeringBannerTitle,
                description: DataValues.volunteeringBannerWeb,
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
