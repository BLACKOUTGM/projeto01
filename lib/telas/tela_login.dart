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

        // Iremos criar um fundo degradê de cor laranja
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Bem Vindo de volta!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(height: 8),

                      const Text(
                        'Entre com sua conta para continuar sua leitura.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.orange),
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
                      //para colocar os weigets lado a lado
                      Align(
                        //para jogar o text buttom para direita

                        alignment: Alignment.centerRight,

                        //para fazer o text em forma de butao
                        child: TextButton(
                          onPressed: () {},

                          child: const Text(
                            'Esqueceu a senha? ',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não tem uma conta? '),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TelaCadastro(),
                                ),
                              );
                            },
                            child: const Text(
                              'Cadastre-se',
                              style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
