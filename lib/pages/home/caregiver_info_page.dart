import 'package:cuida_mais_app/component/app_bar_component.dart';
import 'package:flutter/material.dart';

class CaregiverInfoPage extends StatelessWidget {
  const CaregiverInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Informações do cuidador'),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Icon(Icons.photo, size: 200)),
            Text('Nome do cuidador'),
            Text('Cobra R\$ 350 a hora'),
            Text('Descrição do cuidador'),
            Text('Horários disponíveis:'),
            Text('Colocar calendário abaixo')
          ],
        ),
      ),
    );
  }
}
