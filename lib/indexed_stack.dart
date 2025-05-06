import 'package:flutter/material.dart';

//! PG6 - IndexedStack Demo
class PG6 extends StatefulWidget {
  const PG6({Key? key}) : super(key: key);

  @override
  State<PG6> createState() => _PG6State();
}

class _PG6State extends State<PG6> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Pantalla Seis',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: IndexedStack(
          index: index,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (index == 2) {
            setState(() {
              index = 0;
            });
          } else {
            setState(() {
              index++;
            });
          }
        },
        child: const Icon(Icons.next_plan_outlined),
      ),
    );
  }
}
