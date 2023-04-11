import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS6TechNotes extends StatelessWidget {
  const DS6TechNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.technotesKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.technotesTitle,
                description: DataValues.technotesDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContainerCard().type3(
                    image: 'logo',
                    title: DataValues.technotesOrg1Title,
                    role: DataValues.technotesOrg1Role,
                    years: DataValues.technotesOrg1Years,
                    values: DataValues.technotesOrg1Vales,
                    message: DataValues.lateNightStudentURL.toString(),
                    url: DataValues.lateNightStudentURL,
                    isButtonEnabled: true,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type3(
                    image: 'logo',
                    title: DataValues.technotesOrg2Title,
                    role: DataValues.technotesOrg2Role,
                    years: DataValues.technotesOrg2Years,
                    values: DataValues.technotesOrg2Vales,
                    message: DataValues.technotesURL.toString(),
                    url: DataValues.technotesURL,
                    isButtonEnabled: false,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}
