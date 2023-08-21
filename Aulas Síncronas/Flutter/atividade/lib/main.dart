import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Cliente {
  final String nome;
  final String cidade;

  Cliente(this.nome, this.cidade);
}

class MyApp extends StatelessWidget {
  final List<Cliente> clientes = []; // Lista para armazenar os clientes

  TextEditingController nomeController =
      TextEditingController(); // Controlador para o campo de nome
  TextEditingController cidadeController =
      TextEditingController(); // Controlador para o campo de cidade

  void adicionarCliente() {
    // Função para adicionar cliente à lista
    String nome = nomeController.text;
    String cidade = cidadeController.text;
    clientes.add(Cliente(nome, cidade));

    nomeController.clear(); // Limpa o campo de nome
    cidadeController.clear(); // Limpa o campo de cidade
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cadastro de Clientes',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de Clientes'),
        ),
        body: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration:
                  InputDecoration(labelText: 'digite aqui o nome do cliente'),
            ),
            TextField(
              controller: cidadeController,
              decoration:
                  InputDecoration(labelText: 'digiti aqui a Cidade do Cliente'),
            ),
            ElevatedButton(
              onPressed: adicionarCliente,
              child: Text('Adicionar Cliente'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: clientes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(clientes[index].nome),
                    subtitle: Text(clientes[index].cidade),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
