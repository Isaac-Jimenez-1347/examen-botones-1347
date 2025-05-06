import 'package:flutter/material.dart';

class PG8 extends StatefulWidget {
  const PG8({Key? key}) : super(key: key);

  @override
  State<PG8> createState() => _PG8State();
}

class _PG8State extends State<PG8> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier (Simulado)')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Incrementing & Decrementing\nwithout any external file',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              '$_counter',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: decrement,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
