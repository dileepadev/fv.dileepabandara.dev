import 'package:flutter/material.dart';

class FrameTitle extends StatelessWidget {
  const FrameTitle({Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SelectableText(
            title,
            style: Theme.of(context).textTheme.displaySmall,
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 160.0, right: 160.0, top: 10.0, bottom: 40.0),
            child: SelectableText(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
