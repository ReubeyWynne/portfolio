import 'package:flutter/material.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:reubey_portfolio/style/text_styles.dart';

import '../../shared_widgets/blinking_cursor.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Container(
        color: SiteColours.background,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Experience",
                    style: purpleOrbitonLarge,
                  ),
                  BlinkingCursor(style: purpleOrbitonLarge)
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                constraints:
                    const BoxConstraints(minWidth: 100, maxWidth: 1000),
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Opacity(
                            opacity: .3,
                            child: Image.asset(
                              "assets/png/galleos.png",
                            ))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "Galleos Ltd",
                            style: purpleOrbitonMedium,
                          ),
                        ),
                        Text(
                          "April 2016 - Sept 2017, April 2021 - Dec 2022",
                          style: purpleOrbitonSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "I joined Galleos as an apprentice in 2016, and quickly became a valuable member of the team. An IoT telemetry solutions company, Galleos afforded me many opportunites to develop a broad range of skills. From rewriting critial server code, leading to a significant speedup and cutting SQL writes by over 50%, to writing embedded C production tools used in production for over 5 years - when I wrote their replacement - I've been involved in every part of the companiy's tech stack. After taking some time away for university, I rejoined Galleos in 2021 until the end of last year when after discussion we came to the mutual conclusion the changing nature of my role meant it was best taken by someone able to work from their Leeds office.",
                            style: purpleRobotoSmall,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                constraints:
                    const BoxConstraints(minWidth: 100, maxWidth: 1000),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Opacity(
                            opacity: .3,
                            child: Image.asset(
                              "assets/png/interappt.png",
                              width: 400,
                            ))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "InterAppt Bespoke Software",
                            style: purpleOrbitonMedium,
                          ),
                        ),
                        Text(
                          "2019 - Present",
                          style: purpleOrbitonSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "While studying a Manchester Metropolitan University, I started InterAppt Bespoke Software, providing freelance software developer services and mobile app design and development. Primarily using Flutter frontend development and .NET for backend, I build high quality applications to client specifications. For an example of my work, search \"Clarke Valve\" on your phone's app store, or just look at this website!",
                            style: purpleRobotoSmall,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
