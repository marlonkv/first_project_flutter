import 'package:flutter/material.dart';
import 'package:app/components/task.dart';

class InitialScrenn extends StatefulWidget {
  bool tela;

  InitialScrenn(this.tela, {super.key});

  @override
  State<InitialScrenn> createState() => _InitialScrennState();
}

class _InitialScrennState extends State<InitialScrenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarefas')),
      body: AnimatedOpacity(
        opacity: (widget.tela) ? 0 : 1,
        duration: const Duration(milliseconds: 800),
        child: ListView(children: const [
          Task(
              'correr',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              1),
          Task(
              'Andar',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              3),
          Task(
              'conquistar',
              'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
              9),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.tela = !widget.tela;
          });
        },
        child: const Text('+'),
      ),
    );
  }
}
