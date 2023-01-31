import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:reubey_portfolio/style/text_styles.dart';
import 'dart:html' as html;

class LandingContent extends StatelessWidget {
  const LandingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Flex(
        direction: MediaQuery.of(context).size.aspectRatio > 1
            ? Axis.horizontal
            : Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
              child: Card(
                color: SiteColours.backgroundShade3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30000),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30000),
                  child: Image.asset(
                    "assets/png/reubey.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, I'm Reubey!",
                    style: purpleOrbitonLarge,
                  ),
                  DefaultTextStyle(
                    style: purpleOrbitonMedium,
                    child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText("Fullstack Developer",
                              speed: const Duration(milliseconds: 100),
                              cursor: '_',
                              curve: Curves.easeInOutCirc),
                          TypewriterAnimatedText("Mobile App Designer",
                              speed: const Duration(milliseconds: 100),
                              cursor: '_',
                              curve: Curves.easeInOutCirc),
                          TypewriterAnimatedText("Backend Specialist",
                              speed: const Duration(milliseconds: 100),
                              cursor: '_',
                              curve: Curves.easeInOutCirc),
                        ]),
                  ),
                  Text(
                    "\nI've been building high quality professional applications for 7+ years, and programming since I wrote Pong for my Wii using DevKitPPC aged 11.\n\nWhen I'm not writing code, I'm a wannabe artist, Queer activist, and occasional philosopher.\n",
                    style: purpleRobotoSmall,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: IconButton(
                            onPressed: () {
                              html.window.open(
                                  "https://www.linkedin.com/in/reubey-watkins-9665a6125/",
                                  "LinkedIn");
                            },
                            icon: const Icon(
                              Ionicons.logo_linkedin,
                              size: 50,
                              color: SiteColours.purpleLight,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: IconButton(
                            onPressed: () {
                              html.window.open(
                                  'https://github.com/ReubeyWynne', "GitHub");
                            },
                            icon: const Icon(
                              Ionicons.logo_github,
                              size: 50,
                              color: SiteColours.purpleLight,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: IconButton(
                            onPressed: () {
                              html.window
                                  .open('mailto:reubeycw@gmail.com', "Email");
                            },
                            icon: const Icon(
                              Ionicons.mail,
                              size: 50,
                              color: SiteColours.purpleLight,
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
