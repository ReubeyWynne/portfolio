import 'package:flutter/material.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:reubey_portfolio/style/text_styles.dart';

import '../../shared_widgets/blinking_cursor.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: SiteColours.background,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Experience",
                style: purpleOrbitonLarge,
              ),
              BlinkingCursor(style: purpleOrbitonLarge)
            ],
          )
        ],
      ),
    );
  }
}
