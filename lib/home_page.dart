import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'body.dart';
import 'footer.dart';
import 'header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: AppThemeData.backgroundGrey,
          child: Column(
            children: const [
              Header(),
              Body(),
              SizedBox(
                height: 20,
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
