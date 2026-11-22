import 'package:flutter/material.dart';

import 'telas/Tela_boas_vindas.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MeuApp',
      home: const TelaBoasVindas(),
    );
  }
}
