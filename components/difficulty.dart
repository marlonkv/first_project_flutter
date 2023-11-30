import 'package:flutter/material.dart';

class Difficulty extends StatefulWidget {
  final int dificuldade;
  const Difficulty(this.dificuldade, {super.key});

  @override
  State<Difficulty> createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.dificuldade >= 2) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.dificuldade >= 3) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.dificuldade >= 4) ? Colors.blue : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.dificuldade >= 5) ? Colors.blue : Colors.blue[100],
        ),
      ],
    );
  }
}
