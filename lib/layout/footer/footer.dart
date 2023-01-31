import 'package:flutter/material.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:reubey_portfolio/style/text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: SiteColours.background,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "© Reubey Watkins 2023",
              style: purpleOrbitonSmall,
            ),
          ),
        )
      ]),
    );
  }
}
