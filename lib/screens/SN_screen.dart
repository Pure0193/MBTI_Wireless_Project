import 'package:flutter/material.dart';

class SNScreen extends StatelessWidget {
  const SNScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensing (S) – Intuition (N)'),
      ),
      body: Center(
        child: Column (
            children: <Widget> [
              Text(
                "\nSensing (S) – Intuition (N)\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                "\t\t\t\t\tThis scale involves looking at how people gather information from the world around them. Just like with extraversion and introversion, all people spend some time sensing and intuiting depending on the situation. According to the MBTI, people tend to be dominant in one area or the other.People who prefer sensing tend to pay a great deal of attention to reality, particularly to what they can learn from their own senses. They tend to focus on facts and details and enjoy getting hands-on experience. Those who prefer intuition pay more attention to things like patterns and impressions. They enjoy thinking about possibilities, imagining the future, and abstract theories.",

              ),
            ]
        ),
      ),
    );
  }
}