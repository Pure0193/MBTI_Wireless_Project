import 'package:flutter/material.dart';

class TFScreen extends StatelessWidget {
  const TFScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thinking (T) – Feeling (F)'),
      ),
      body: Center(
        child: Column (
            children: <Widget> [
              Text(
                "\nThinking (T) – Feeling (F)\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                "\t\t\t\t\tThis scale focuses on how people make decisions based on the information that they gathered from their sensing or intuition functions. People who prefer thinking place a greater emphasis on facts and objective data.They tend to be consistent, logical, and impersonal when weighing a decision. Those who prefer feeling are more likely to consider people and emotions when arriving at a conclusion.",

              ),
            ]
        ),
      ),
    );
  }
}