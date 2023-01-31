import 'package:flutter/material.dart';
import 'package:reubey_portfolio/layout/footer/footer.dart';
import 'package:reubey_portfolio/layout/header/header.dart';
import 'package:reubey_portfolio/pages/experience/experience_page.dart';
import 'package:reubey_portfolio/pages/indices.dart';
import 'package:reubey_portfolio/pages/landing/landing_content.dart';
import 'package:reubey_portfolio/pages/skills/skills_page.dart';
import 'package:reubey_portfolio/style/colours.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final _controller = ItemScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Header(
          controller: _controller,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          color: SiteColours.background,
          height: MediaQuery.of(context).size.height,
          child: ScrollablePositionedList.builder(
            itemScrollController: _controller,
            itemCount: PageIndices.values.length,
            itemBuilder: (context, index) {
              switch (PageIndices.values[index]) {
                case PageIndices.landing:
                  return const LandingContent();
                case PageIndices.skills:
                  return const SkillsPage();
                case PageIndices.experience:
                  return const ExperiencePage();
                case PageIndices.footer:
                  return const Footer();
                default:
                  return Container();
              }
            },
          ),
        ));
  }
}
