import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:reubey_portfolio/pages/indices.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:reubey_portfolio/style/text_styles.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  const Header({Key? key, required this.controller})
      : preferredSize = const Size.fromHeight(100),
        super(key: key);

  final ItemScrollController controller;
  @override
  final Size preferredSize;
  final _scollDuration = const Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.aspectRatio < .9
        ? AppBar(
            elevation: 0,
            toolbarHeight: 100,
            backgroundColor: SiteColours.background.withOpacity(.6),
            title: DefaultTextStyle(
              style: purpleOrbitonLarge,
              child:
                  AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
                TypewriterAnimatedText("RW_",
                    speed: const Duration(milliseconds: 800),
                    cursor: '_',
                    curve: Curves.linear)
              ]),
            ),
          )
        : Container(
            color: SiteColours.background.withOpacity(.6),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DefaultTextStyle(
                  style: purpleOrbitonLarge,
                  child: Row(
                    children: [
                      AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText("RW_",
                                speed: const Duration(milliseconds: 800),
                                cursor: '_',
                                curve: Curves.linear)
                          ]),
                      const Spacer(
                        flex: 1,
                      ),
                      // TextButton(
                      //     onPressed: () => controller.scrollTo(
                      //         index: PageIndices.about.index,
                      //         duration: _scollDuration),
                      //     child: Text(
                      //       "About",
                      //       style: purpleOrbitonMedium,
                      //     )),
                      TextButton(
                          onPressed: () => controller.scrollTo(
                              index: PageIndices.skills.index,
                              duration: _scollDuration),
                          child: Text(
                            "Skills",
                            style: purpleOrbitonMedium,
                          )),
                      TextButton(
                          onPressed: () => controller.scrollTo(
                              index: PageIndices.experience.index,
                              duration: _scollDuration),
                          child: Text(
                            "Experience",
                            style: purpleOrbitonMedium,
                          )),
                      // TextButton(
                      //     onPressed: () => controller.scrollTo(
                      //         index: PageIndices.contact.index,
                      //         duration: _scollDuration),
                      //     child: Text(
                      //       "Contact",
                      //       style: purpleOrbitonMedium,
                      //     )),
                    ],
                  ),
                )),
          );
  }
}
