import 'package:flutter/material.dart';

//! PG1 con transición personalizada integrada sin importar archivos externos

class PG1 extends StatelessWidget {
  const PG1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Text(
          'Pantalla Dos',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 20.0, // Tamaño de la letra 20
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.deepOrange,
          child: const Text(
            'Second',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 500),
                pageBuilder: (_, __, ___) => const SecondPage(),
                transitionsBuilder: (_, animation, __, child) {
                  return ScaleTransition(
                    scale: CurvedAnimation(
                      parent: animation,
                      curve: Curves.elasticOut,
                    ),
                    child: child,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(title: const Text('Second Page')),
      body: const Center(
        child: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
