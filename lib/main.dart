import 'package:flutter/material.dart';
import 'game.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Title("6 + 7 ", HitType.hit)),
        appBar: AppBar(
          title: const Align(
            alignment: Alignment.centerLeft,
            child: Text("THE BOYS"),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title(this.letter, this.hitType, {super.key});

  final String letter;
  final HitType hitType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: switch (hitType) {
          HitType.hit => const Color.fromARGB(255, 52, 196, 60),
          HitType.miss => Colors.grey,
          HitType.partial => Colors.yellow,
          _ => Colors.white,
        },
      ),
      child: Center(child: Text(letter)),
    );
  }
}
