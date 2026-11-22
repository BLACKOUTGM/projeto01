import 'package:flutter/material.dart';

class CampoSenha extends StatefulWidget {
  const CampoSenha({super.key});

  @override
  State<CampoSenha> createState() => _CampoSenhaState();
}

//classe resposavel por deixar  a senha visivel ou nao
class _CampoSenhaState extends State<CampoSenha> {
  bool mostrarSenha = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !mostrarSenha,

      decoration: InputDecoration(
        labelText: 'Senha',
        hintText: 'Digite sua senha',
        prefixIcon: const Icon(Icons.lock),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

        suffixIcon: IconButton(
          icon: Icon(mostrarSenha ? Icons.visibility : Icons.visibility_off),

          onPressed: () {
            setState(() {
              mostrarSenha = !mostrarSenha;
            });
          },
        ),
      ),
    );
  }
}
