import 'package:flutter/material.dart';

class EIScreen extends StatelessWidget {
  const EIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extraversion (E) – Introversion (I)'),
      ),
      body: Center(
        child: Column (
          children: <Widget> [
            Text(
            "\nExtraversion (E) – Introversion (I)\n",
            style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Text(
              "\t\t\t\t\tThe extraversion-introversion dichotomy was first explored by Jung in his theory of personality types as a way to describe how people respond and interact with the world around them. While these terms are familiar to most people, the way in which they are used in the MBTI differs somewhat from their popular usage. Extraverts (also often spelled extroverts) are \"outward-turning\" and tend to be action-oriented, enjoy more frequent social interaction, and feel energized after spending time with other people. Introverts are \"inward-turning\" and tend to be thought-oriented, enjoy deep and meaningful social interactions, and feel recharged after spending time alone.",

            ),
          ]
        ),
      ),
    );
  }
}