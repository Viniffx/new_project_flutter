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
  const ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de widgets')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsConteudo()),
            ),
            child: Text('widgets de conteúdo'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsLayout()),
            ),
            child: Text('widgets de layout'),
          ),

        ],
      ),
    );
  }
}
