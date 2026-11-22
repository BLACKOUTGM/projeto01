import 'package:flutter/material.dart';
import 'package:tabalho01/telas/tela_cadasto.dart';
import 'package:tabalho01/telas/tela_principal.dart';
import 'package:tabalho01/widgets/campo_senha.dart';
import 'package:tabalho01/widgets/campo_texto.dart';

class TelaLogin extends StatelessWidget {
  const TelaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Utilizando a tela inteira, sem AppBar.
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // Iremos criar um fundo degradê de cor azul
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF3E0), Color(0xFFFFE0B2), Color(0xFFFFCC80)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Colors.orange,
                      ),
                      const SizedBox(height: 30),

                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(height: 8),

                      const Text(
                        'Entre com seus dados para continuar',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13, color: Colors.orange),
                      ),
                      const SizedBox(height: 16),

                      const CampoTexto(
                        titulo: 'E-mail',
                        dica: 'Digite seu email',
                        icone: Icons.email,
                      ),

                      const SizedBox(height: 10),

                      const CampoSenha(),

                      const SizedBox(height: 10),

                      Row(
                        //espaçaento que distibui o espaço de forma igual
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},

                            child: const Text(
                              'Esqueci a senha ',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TelaCadastro(),
                                ),
                              );
                            },
                            child: const Text(
                              'Criar conta',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelaPrincipal(),
                              ),
                            );
                          },

                          icon: const Icon(Icons.login),
                          label: const Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
