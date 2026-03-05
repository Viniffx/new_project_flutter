import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widets de conteúdo')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TituloSessao(titulo: 'Textos'),
          Text(
            'Texto estizado',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Texto com estilo padrão',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          Divider(),
          TituloSessao(titulo: 'Imagem'),
          Image.network('https://picsum.photos/200/300?grayscale'),

          Divider(),
          TituloSessao(titulo: 'Ícone'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 32),
              Icon(Icons.star, color: Colors.amber, size: 32),
              Icon(Icons.settings, color: Colors.blue, size: 32),
            ],
          ),

          Divider(),
          TituloSessao(titulo: 'Elevated button'),
          ElevatedButton(onPressed: () {}, child: Text('Clique aqui')),
        ],
      ),
    );
  }
}
