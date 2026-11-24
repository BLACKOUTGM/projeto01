import 'package:flutter/material.dart';
import 'package:tabalho01/telas/Tela_perfil.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //menu barra lateral
      drawer: Drawer(
        //para deixar em lista as opcoes
        child: ListView(
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                //para jogar o texto para esquerda
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),

              child: Text(
                'Blibioteca',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),

              child: const Text(
                'Generos',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),

              child: const Text(
                'Favoritos',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),

              child: const Text(
                'Desejos',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),

              child: const Text(
                'Configuraçoes ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16),
              ),

              child: const Text(
                'Configuraçoes ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,

        title: const Text(
          'Livros',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TelaPerfil()),
              );
            },
            icon: Icon(Icons.person),
            tooltip: 'Perfil',
          ),
        ],
      ),
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
                  ' Recomendacoes',
                  style: TextStyle(fontSize: 20, color: Colors.orangeAccent),
                ),

                Card(
                  elevation: 5,
                  //para dar animaçao ao clicar
                  child: InkWell(
                    onTap: () {
                      //para aparecer um text de aviso ao clicar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar esse livro',
                          ),
                        ),
                      );
                    },

                    child: Column(
                      children: [
                        //para mostar em forma de lista
                        ListTile(
                          //para exixbir o widget imagem na direita
                          leading: Image.network(
                            'https://m.media-amazon.com/images/I/618fXbK+OkL._AC_UF1000,1000_QL80_.jpg',
                          ),

                          title: Text(
                            'Crepusculo',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                          subtitle: Text(
                            'livro de vampiros brilhantes',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                Card(
                  elevation: 5,

                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar esse livro',
                          ),
                        ),
                      );
                    },

                    child: Column(
                      children: [
                        //visualizar em forma de lista
                        ListTile(
                          //para
                          leading: Image.network(
                            'https://m.media-amazon.com/images/I/41mMD4KmwsL._SY445_SX342_ML2_.jpg',
                          ),
                          title: Text(
                            'Harry Potter',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                          subtitle: Text(
                            'livro de bruxinho',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar esse livro',
                          ),
                        ),
                      );
                    },

                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://m.media-amazon.com/images/I/516V++YyDwL._SY466_.jpg',
                          ),
                          title: Text(
                            'Aprenda dart',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                          subtitle: Text(
                            'livro para estudos',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar esse livro',
                          ),
                        ),
                      );
                    },

                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://m.media-amazon.com/images/I/61cL4xVNcqL._SY425_.jpg',
                          ),
                          title: Text(
                            'C++ para iniciantes',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey,
                            ),
                          ),
                          subtitle: Text(
                            'livro para estudos',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
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
