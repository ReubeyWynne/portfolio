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
    final viewHeight = MediaQuery.of(context).size.height;
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
          height: viewHeight * .4,
          child: InfiniteCarousel.builder(
              controller: _carouselController,
              itemCount: skills.length,
              itemExtent: viewHeight * .35,
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
                          ? viewHeight * .35
                          : viewHeight * .25,
                      width: itemIndex == centeredIndex
                          ? viewHeight * .35
                          : viewHeight * .25,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${skills[centeredIndex].name} - ${skills[centeredIndex].yearsExperience} Years Experience",
                style: purpleOrbitonMedium,
              ),
              AnimatedTextKit(
                pause: Duration.zero,
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText("",
                      textStyle: purpleOrbitonMedium,
                      speed: const Duration(milliseconds: 500))
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints.loose(const Size.fromWidth(1000)),
              child: Text(
                skills[centeredIndex].description,
                style: purpleRobotoSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
