import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:developer';

class ButtonTextLarge extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String message;

  const ButtonTextLarge(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

class ButtonTextSmall extends StatelessWidget {
  final String text;
  final String message;
  final Uri url;

  const ButtonTextSmall(
      {Key? key, required this.text, required this.message, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            if (!await launchUrl(url)) {
              throw 'Could not launch $url';
            }
            log("Direct to: $url");
          },
          child: Text(
            text,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
