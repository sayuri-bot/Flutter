import 'package:flutter/material.dart';

class BtnLight extends StatelessWidget {
  final String numero;
  final void Function(String) onClick;
  const BtnLight({super.key, required this.numero, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      print("click $numero");
      this.onClick(this.numero);
    },
      child: Text(this.numero, style: TextStyle(fontSize: 24, color: Colors.white)),
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.pinkAccent)),
     );
  }
}
 class BtnDark extends StatelessWidget {
  final String signo;
  final void Function(String) onClick;
  const BtnDark({super.key, required this.signo, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      print ("click $signo");
    },
      child: Text(this.signo, style: TextStyle(fontSize: 24, color: Colors.white)),
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 206, 185, 192))),
     );
  }
 }