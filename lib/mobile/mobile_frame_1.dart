import 'package:flutter/material.dart';

class MobileFrame1 extends StatelessWidget {
  const MobileFrame1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
      child: Center(
        child: Text(
          "Mobile UI is not available yet",
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
