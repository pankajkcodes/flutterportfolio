import 'package:flutter/material.dart';
import 'package:pankajkcodes/projects_widget.dart';
import 'package:pankajkcodes/skills_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const HeroWidget(),
          const Text(
            "My latest Projects",
            style: TextStyle(color: Colors.green),
          ),
          ProjectSection(),
          const Text(
            "My Skills",
            style: TextStyle(color: Colors.green),
          ),
          const SkillsSection(),
          const Text(
            "Social Links",
            style: TextStyle(color: Colors.green),
          ),
          const SocialMediaSection()
        ],
      ),
    );
  }
}

// HERO SECTION CODE
class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 600),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "images/computer.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text(
            'Hello Everybody \n I am Pankaj Android & iOS Mobile App Developer.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 768 ? 50 : 30,
                color: Colors.white,
                backgroundColor: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}

// SOCIAL LINKS WIDGET
class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.youtube_searched_for_outlined)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.web_stories)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.gite)),
      ],
    );
  }
}
