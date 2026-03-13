import 'package:flutter/material.dart';
import 'package:new_project/screen/widgets_conteudo.dart';
import 'package:new_project/screen/widgets_layout.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  final List<CatalogoItem> secoes = [
    CatalogoItem(
      titulo: 'Widgets de Conteúdo',
      icone: Icons.text_fields,
      descricao: 'Exemplos de widgets básicos como Text Image icon...',
      destino: WidgetsConteudo(),
    ),

    CatalogoItem(
      titulo: 'Widgets de Layout',
      icone: Icons.text_fields,
      descricao: 'Exemplos e demonstrações de padding, column, flexible...',
      destino: WidgetsLayout(),
    ),
  ];
  ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de widgets')),
      body: Column(
        children: secoes
            .map(
              (item) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => item.destino),
                  );
                },
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Icon(item.icone, size: 48, color: Colors.blue),
                        Text(item.titulo, textAlign: TextAlign.center),
                        Text(
                          item.descricao,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.amber),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}






// [
//           ElevatedButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => WidgetsConteudo()),
//             ),
//             child: Text('widgets de conteúdo'),
//           ),
//           ElevatedButton(
//             onPressed: () => Navigator.push(
//               context,
//               MaterialPageRoute(builder: (_) => WidgetsLayout()),
//             ),
//             child: Text('widgets de layout'),
//           ),
//         ],