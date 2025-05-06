import 'package:flutter/material.dart';

//! AboutListTile reemplazado con contenido animado
class PG2 extends StatefulWidget {
  const PG2({Key? key}) : super(key: key);

  @override
  State<PG2> createState() => _PG2State();
}

class _PG2State extends State<PG2> {
  double padValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'animated_padding',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          AnimatedPadding(
            padding: EdgeInsets.all(padValue),
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            child: Image.network(
                'https://raw.githubusercontent.com/Isaac-Jimenez-1347/Relojeria-TempusLux-_imgs_app_Flutter/refs/heads/main/reloj3.jpg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 50;
                  });
                },
                icon: const Icon(
                  Icons.zoom_out,
                  color: Color(0xff810000),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    padValue = 0;
                  });
                },
                icon: const Icon(
                  Icons.zoom_in,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '''Cow, in common parlance, a domestic bovine, regardless of sex and age, usually of the species Bos taurus. In precise usage, the name is given to mature females of several large mammals, including cattle (bovines), moose, elephants, sea lions, and whales.''',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
