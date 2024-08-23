import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Primeira lista de botões
          ElevatedButton(
            onPressed: () {
              // Ação do botão 1
            },
            child: const Text('Botão 1'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ação do botão 2
            },
            child: const Text('Botão 2'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ação do botão 3
            },
            child: const Text('Botão 3'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ação do botão 4
            },
            child: const Text('Botão 4'),
          ),
          ElevatedButton(
            onPressed: () {
              // Ação do botão 5
            },
            child: const Text('Botão 5'),
          ),
          const SizedBox(height: 20), // Espaço entre os conjuntos de botões
          
          // Segunda lista de botões em tabela
          Table(
            children: [
              TableRow(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão 1 na tabela
                    },
                    child: const Text('Botão 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão 2 na tabela
                    },
                    child: const Text('Botão 2'),
                  ),
                ],
              ),
              TableRow(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão 3 na tabela
                    },
                    child: const Text('Botão 3'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão 4 na tabela
                    },
                    child: const Text('Botão 4'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20), // Espaço entre os conjuntos de botões

          // Terceira lista de botões utilizando ListView.builder
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Número de botões (A até J)
              itemBuilder: (context, index) {
                // Criando uma lista das primeiras 10 letras do alfabeto
                final letters = List.generate(10, (i) => String.fromCharCode(65 + i));
                return ElevatedButton(
                  onPressed: () {
                    // Ação do botão
                  },
                  child: Text('${letters[index]}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
