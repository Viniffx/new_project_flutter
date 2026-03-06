import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget de  layout')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSessao(titulo: 'Padding'),
          Container(
            color: const Color.fromARGB(255, 152, 255, 138),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text('Texto com padding intero de 20px'),
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'Align'),
          Container(
            height: 80,
            color: const Color.fromARGB(255, 0, 110, 255),
            alignment: Alignment.bottomRight,
            child: Text('Alinhamento de texto'),
          ),
          Divider(),
          TituloSessao(titulo: 'Center'),
          Container(
            height: 80,
            color: const Color.fromARGB(255, 105, 49, 49),
            child: Center(child: Text('Alinhamento de texto')),
          ),
          Divider(),
          TituloSessao(titulo: 'Sizebox'),
          Column(
            children: [
              Text('Texto acima'),
              SizedBox(height: 20),
              Text('Texto abaixo'),
            ],
          ),
          Divider(),
          TituloSessao(titulo: 'Expanded e Flexible (em column)'),
          Container(
            height: 200,
            color: Colors.amberAccent,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text('Expanded ocupa o espaço restante'),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    child: Text('Flexible (Flex: 1)'),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'Expanded e Flexible (em row)'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: Center(child: Text('Expanded')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 50,
                  color: Colors.green,
                  child: Center(child: Text('Flexible (Flex: 1)')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
