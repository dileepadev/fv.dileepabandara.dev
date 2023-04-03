import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class MS6Blog extends StatelessWidget {
  const MS6Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.blogKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.blogTitle,
                description: DataValues.blogDescription),
            const SizedBox(height: 30.0),
            ContainerCard().type3(
              image: 'logo',
              title: DataValues.blogOrg1Title,
              role: DataValues.blogOrg1Role,
              years: DataValues.blogOrg1Years,
              values: DataValues.blogOrg1Vales,
              message: DataValues.lateNightStudentURL.toString(),
              url: DataValues.lateNightStudentURL,
            ),
            const SizedBox(height: 20.0),
            ContainerCard().type3(
              image: 'techdiary',
              title: DataValues.blogOrg2Title,
              role: DataValues.blogOrg2Role,
              years: DataValues.blogOrg2Years,
              values: DataValues.blogOrg2Vales,
              message: DataValues.techdiaryURL.toString(),
              url: DataValues.techdiaryURL,
            ),
          ],
        ),
      ),
    );
  }
}
