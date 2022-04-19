import 'package:flutter/material.dart';

class JPScreen extends StatelessWidget {
  const JPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Judging (J) – Perceiving (P)'),
      ),
      body: Center(
        child: Column (
            children: <Widget> [
              Text(
                "\nJudging (J) – Perceiving (P)\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Text(
                "\t\t\t\t\tThe final scale involves how people tend to deal with the outside world. Those who lean toward judging prefer structure and firm decisions. People who lean toward perceiving are more open, flexible, and adaptable. These two tendencies interact with the other scales.Remember, all people at least spend some time engaged in extraverted activities. The judging-perceiving scale helps describe whether you behave like an extravert when you are taking in new information (sensing and intuiting) or when you are making decisions (thinking and feeling).",

              ),
            ]
        ),
      ),
    );
  }
}