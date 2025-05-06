import 'package:flutter/material.dart';

//! Modelo User integrado directamente
class User {
  String name = '';
  int age = 0;

  void changeName() {
    name = 'Name changed!';
  }
}

//! PG4 - Cascade Operator
class PG4 extends StatelessWidget {
  const PG4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cascade Operator
    User user1 = User()
      ..name = 'User1'
      ..age = 13
      ..changeName();

    // No Cascade Operator
    User user2 = User();
    user2.name = 'User2';
    user2.age = 20;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Pantalla Cinco',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.deepPurple[100],
              padding: const EdgeInsets.all(8),
              child: const Text(
                '''User user1 = User()\n  ..name = 'User1'\n  ..age = 13\n  ..changeName();''',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Name: ${user1.name}',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Age: ${user1.age}",
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            Text(
              'Name: ${user2.name}',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              "Age: ${user2.age}",
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
