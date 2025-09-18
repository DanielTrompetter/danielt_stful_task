import 'package:flutter/material.dart';

//muss StatefulWidget sein, da sich der Zustand (der counter) ändert
class CounterCard extends StatefulWidget {
  const CounterCard({super.key});

  @override
  createState() => CounterCardState();
}

class CounterCardState extends State<CounterCard> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Zähler: $counter'),
            ElevatedButton(
              onPressed: () => setState(() => counter++),
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
