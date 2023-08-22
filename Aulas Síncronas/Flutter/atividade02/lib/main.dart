import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalendarPage(),
    );
  }
}

class CalendarPage extends StatelessWidget {
  // Lista de strings representando os dias do mês
  final List<String> days = List.generate(31, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendário Agosto 2023'),
      ),
      body: GridView.builder(
        // Configuração da grade de células
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7, // 7 colunas para 7 dias da semana
        ),
        itemCount: days.length,
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              days[index], // Exibe o número do dia na célula
              style: TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
