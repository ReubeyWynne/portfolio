import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reubey_portfolio/style/text_styles.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  const Header({Key? key})
      : preferredSize = const Size.fromHeight(100),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.aspectRatio < .9
        ? AppBar(
            toolbarHeight: 100,
            backgroundColor: const Color.fromARGB(180, 19, 20, 24),
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
            color: const Color.fromARGB(180, 19, 20, 24),
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
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "About",
                            style: purpleOrbitonMedium,
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skills",
                            style: purpleOrbitonMedium,
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Experience",
                            style: purpleOrbitonMedium,
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Interests",
                            style: purpleOrbitonMedium,
                          )),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Contact",
                            style: purpleOrbitonMedium,
                          )),
                    ],
                  ),
                )),
          );
  }
}
