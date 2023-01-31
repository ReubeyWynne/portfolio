import 'package:flutter/material.dart';
import 'package:reubey_portfolio/layout/header/header.dart';
import 'package:reubey_portfolio/pages/landing/landing_content.dart';
import 'package:reubey_portfolio/pages/skills/skills_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Header(),
        extendBodyBehindAppBar: true,
        body: Container(
          color: const Color.fromARGB(255, 19, 20, 24),
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              const LandingContent(),
              const SkillsPage(),
              Container(
                height: MediaQuery.of(context).size.height,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.blueGrey.shade800,
              )
            ],
          ),
        ));
  }
}
