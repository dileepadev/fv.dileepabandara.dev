import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/container_banner.dart';
import '../widgets/frame_title.dart';

class DS4Experience extends StatelessWidget {
  const DS4Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.experienceKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.experienceTitle,
                description: DataValues.experienceDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type3(
                    image: 'dileepabandara_dev',
                    title: DataValues.experienceOrg1Title,
                    role: DataValues.experienceOrg1Role,
                    years: DataValues.experienceOrg1Years,
                    values: DataValues.experienceOrg1Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'ddstechvira',
                    title: DataValues.experienceOrg2Title,
                    role: DataValues.experienceOrg2Role,
                    years: DataValues.experienceOrg2Years,
                    values: DataValues.experienceOrg2Vales,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    isButtonEnabled: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            Center(
              child: ContainerBanner().type1(
                  isDesktop: true,
                  title1: DataValues.experienceBanner,
                  title2: DataValues.experienceBannerTitle,
                  description: DataValues.experienceBannerWeb,
                  image: 'logo',
                  message: 'View Toolkit',
                  url: DataValues.toolkitURL),
            ),
          ],
        ),
      ),
    );
  }
}
