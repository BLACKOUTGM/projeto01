import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  //criar variaveis que irao rebeber informaocoes de campo de texto

  final String titulo;
  final String dica;
  final IconData icone;

  const CampoTexto({
    super.key,
    required this.titulo,
    required this.dica,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: titulo,
        hintText: dica,
        prefixIcon: Icon(icone),

        filled: true,
        fillColor: Colors.white,

        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
