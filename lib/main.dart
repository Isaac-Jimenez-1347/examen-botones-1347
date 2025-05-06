import 'package:flutter/material.dart';
import 'package:examebotones/inicio.dart';
import 'package:examebotones/animated-padding.dart';
import 'package:examebotones/pageroute_builder.dart';
import 'package:examebotones/aspect_ratio.dart';
import 'package:examebotones/cascade_operator.dart';
import 'package:examebotones/indexed_stack.dart';
import 'package:examebotones/constrained_box.dart';
import 'package:examebotones/change_notifier.dart';
import 'package:examebotones/animated_builder.dart';

void main() => runApp(MisRutas());

class MisRutas extends StatelessWidget {
  const MisRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const FSN(),
        '/third': (context) => const PG2(),
        '/second': (context) => const PG1(),
        '/fourth': (context) => const PG3(),
        '/fifth': (context) => const PG4(),
        '/sixth': (context) => const PG6(),
        '/seventh': (context) => const PG7(),
        '/eighth': (context) => const PG8(),
        '/nineth': (context) => const PG9(),
      },
    );
  }
}
