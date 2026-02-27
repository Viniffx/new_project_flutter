import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(title: Text('Widget de  conteúdo')),
        body: ListView(
          padding: EdgeInsets.all(25),
          children: [
            TituloSessao(titulo: 'Texto de exemplo'),
            Text(
              'Texto de conteudo ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),

            Divider(),
            TituloSessao(titulo: 'Imagem de exemplo'),
            Image.network('https://picsum.photos/id/237/200/300'),

            Divider(),
            TituloSessao(titulo: 'Icone'),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 50,),
              Icon(Icons.star, color: Colors.yellow, size: 50,),
              Icon(Icons.settings, color: Colors.red, size: 50,),
            ],),

            Divider(),
            TituloSessao(titulo: 'Elevated Button'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Pressione'),
            ),

          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
