import 'package:flutter/material.dart';

class BtnLight extends StatelessWidget {
  final String numero;
  final void Function(String) onClick;

  const BtnLight({
    super.key,
    required this.numero,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: SizedBox(
        width: 72,
        height: 72,
        child: ElevatedButton(
          onPressed: () {
            onClick(numero);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 187, 93, 196),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Text(
            numero,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 33, 30, 34),
            ),
          ),
        ),
      ),
    );
  }
}

class BtnDark extends StatelessWidget {
  final String signo;
  final void Function(String) onClick;

  const BtnDark({
    super.key,
    required this.signo,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: SizedBox(
        width: 72,
        height: 72,
        child: ElevatedButton(
          onPressed: () {
            onClick(signo);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 139, 171, 201),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          child: Text(
            signo,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 70, 70, 70),
            ),
          ),
        ),
      ),
    );
  }
}
