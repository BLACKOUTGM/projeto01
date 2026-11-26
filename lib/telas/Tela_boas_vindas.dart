// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tabalho01/telas/tela_login.dart';

class TelaBoasVindas extends StatelessWidget {
  const TelaBoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //para usar a tela inteira
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //fundo degrade

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
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  //icone com text lado a lado
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.book, color: Colors.orange, size: 24),
                      Text(
                        'E-BOOK',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 5,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 50),

                  Container(
                    width: 200,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(205, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withValues(alpha: 0.8),
                          blurRadius: 12,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),

                    child: const Center(
                      child: Icon(
                        Icons.auto_stories_rounded,
                        size: 100,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    'Seu próximo universo \n em cada página.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 30),

                  const Text(
                    ' Organize suas leituras e descubra novas histórias. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.orange, fontSize: 15),
                  ),

                  const SizedBox(height: 30),

                  //botao para avançar para tela de login
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.orange.withValues(alpha: 0.8),
                          blurRadius: 12,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),

                    child: TextButton(
                      child: Text(
                        'começar agora',
                        style: TextStyle(color: Colors.white),
                      ),

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TelaLogin(),
                          ),
                        );
                      },
                    ),
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
