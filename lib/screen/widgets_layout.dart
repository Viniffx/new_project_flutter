import 'package:flutter/material.dart';
import 'package:new_project/screen/widgets_conteudo.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widgets de layout'),),
      body: ListView(padding: EdgeInsets.all(16.0),
      children: [
        ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => WidgetsConteudo()),
            ),
            child: Text('widgets de conteúdo'),
          ),
        ],
      ),
    );
  }
}
