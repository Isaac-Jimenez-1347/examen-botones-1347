import 'package:flutter/material.dart';

//! AspectRatio demo convertido en PG3
class PG3 extends StatelessWidget {
  const PG3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Fondo azul
        title: const Text(
          'Pantalla Cuatro',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.network(
                  'https://raw.githubusercontent.com/Isaac-Jimenez-1347/Relojeria-TempusLux-_imgs_app_Flutter/refs/heads/main/reloj3.jpg'),
            ),
            const Text(
              'AspectRatio de 3/2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 3 / 1,
              child: Image.network(
                  'https://raw.githubusercontent.com/Isaac-Jimenez-1347/Relojeria-TempusLux-_imgs_app_Flutter/refs/heads/main/reloj3.jpg'),
            ),
            const Text(
              'AspectRatio de 3/1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 5 / 1,
              child: Image.network(
                  'https://raw.githubusercontent.com/Isaac-Jimenez-1347/Relojeria-TempusLux-_imgs_app_Flutter/refs/heads/main/reloj3.jpg'),
            ),
            const Text(
              'AspectRatio de 5/1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
