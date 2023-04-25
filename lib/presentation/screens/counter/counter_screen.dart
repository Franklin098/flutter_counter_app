import 'package:flutter/material.dart';

// We cannot handle state only with a StatelessWidget
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// Stateful widgets are the heart of every animation

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter String')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Text(
            'Click${clickCounter == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 25),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          // we tell flutter to re-render the widget when calling the setState function
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
