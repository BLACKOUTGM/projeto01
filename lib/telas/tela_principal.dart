import 'package:flutter/material.dart';
import 'package:tabalho01/telas/Tela_perfil.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
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
        //codigo para desativar seta do cano a tela

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Livros:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: () {
                      print('clicado');
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Em breve você poderá acessar esse livro',
                          ),
                        ),
                      );
                    },

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                          leading: Image.network(
                            'https://m.media-amazon.com/images/I/618fXbK+OkL._AC_UF1000,1000_QL80_.jpg',
                          ),
                          title: Text(
                            'Crepusculo',
                            style: TextStyle(
                              fontSize: 30,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
