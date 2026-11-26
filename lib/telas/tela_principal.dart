import 'package:flutter/material.dart';
import 'package:tabalho01/telas/Tela_perfil.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF3E0), Color(0xFFFFE0B2), Color(0xFFFFCC80)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          //para se adptar na tela e otrna rolavel
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              //para centralizar sem torar nos cantos da tela
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ola, leitor',
                  style: TextStyle(fontSize: 15, color: Color(0xFF6E6259)),
                ),

                Text(
                  'Oque vamos ler hoje?',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 20),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar livro, autor ou genero... ',
                    prefixIcon: Icon(Icons.search, color: Colors.orange),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                Text(
                  'Continuar lendo',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      //simulaçao de capa

                      Container(
                        width: 55,
                        height: 70,

                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          Icons.menu_book,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const SizedBox(height: 15),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '  Crepusculo',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 5),

                            const Text(
                              '   Stephenie Meyer',
                              style: TextStyle(
                                fontSize: 10,

                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              '  68% concluído • Página 412 de 604',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
