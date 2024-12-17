import 'package:flutter/material.dart';

// The main app widget
class App2 extends StatefulWidget {
  const App2({super.key});

  @override
  State<App2> createState() => _App2State();
}

class _App2State extends State<App2> {
  int _counter = 0;

  void _incrementCounter(int inc) {
    setState(() {
      _counter += inc;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CounterDisplay(_counter),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Incrementer(label: '+1', onPressed: () => _incrementCounter(1)),
            Incrementer(label: '+2', onPressed: () => _incrementCounter(2)),
            Incrementer(label: '+3', onPressed: () => _incrementCounter(3))
          ])
        ]),
      ),
    );
  }
}

// Widget to display the counter
class CounterDisplay extends StatelessWidget {
  final int count;

  const CounterDisplay(this.count, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Count: $count',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class Incrementer extends StatelessWidget {
  final String? label;
  final VoidCallback? onPressed;

  const Incrementer({this.label, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label ?? 'Increment'),
      ),
    );
  }
}
