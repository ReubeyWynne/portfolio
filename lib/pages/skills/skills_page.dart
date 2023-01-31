import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:reubey_portfolio/data/skills.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:reubey_portfolio/style/text_styles.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  final _carouselController = InfiniteScrollController();
  int centeredIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: SiteColours.backgroundShade2,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            "Skills_",
            style: purpleOrbitonLarge,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          child: InfiniteCarousel.builder(
              controller: _carouselController,
              itemCount: skills.length,
              itemExtent: MediaQuery.of(context).size.height * .35,
              scrollBehavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  // Allows to swipe in web browsers
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse
                },
              ),
              onIndexChanged: (p0) {
                setState(() {
                  centeredIndex = p0;
                });
              },
              itemBuilder: (context, itemIndex, realIndex) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: SizedBox(
                      height: itemIndex == centeredIndex
                          ? MediaQuery.of(context).size.height * .35
                          : MediaQuery.of(context).size.height * .25,
                      width: itemIndex == centeredIndex
                          ? MediaQuery.of(context).size.height * .35
                          : MediaQuery.of(context).size.height * .25,
                      child: GestureDetector(
                          onTap: () {
                            _carouselController.animateToItem(realIndex,
                                duration: const Duration(milliseconds: 700));
                          },
                          child: Card(
                            color: SiteColours.backgroundShade3,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                skills[itemIndex].imagePath,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )),
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Center(
            child: AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(milliseconds: 10),
                animatedTexts: [
                  ColorizeAnimatedText(
                    "${skills[centeredIndex].yearsExperience} Years Experience",
                    textStyle: purpleOrbitonMedium,
                    colors: [
                      Colors.purple.shade400,
                      Colors.purple.shade200,
                      Colors.purple.shade50,
                      Colors.orange.shade100,
                      Colors.orange.shade300,
                    ],
                    speed: const Duration(milliseconds: 200),
                    textAlign: TextAlign.center,
                  )
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Text(
              skills[centeredIndex].description,
              style: purpleRobotoSmall,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ]),
    );
  }
}
