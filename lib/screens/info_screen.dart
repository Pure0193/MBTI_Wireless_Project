import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MBTI Information'),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            // E - I
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/EI');
              },
              child: const Text('E - I'),
            ),
            // S - N
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/SN');
              },
              child: const Text('S - N'),
            ),
            // T - F
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/TF');
              },
              child: const Text('T - F'),
            ),
            // J - P
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/JP');
              },
              child: const Text('J - P'),
            ),
          ]
        )


      ),
    );
  }
}