import 'package:cuida_mais_app/component/app_bar_component.dart';
import 'package:cuida_mais_app/pages/home/caregiver_info_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Cor de fundo clara para contraste
      appBar: appBar('Lista de profissionais'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            _mountCardWidget(context),
            _mountCardWidget(context),
            _mountCardWidget(context),
            _mountCardWidget(context),
          ],
        ),
      ),
    );
  }
}

_mountCardWidget(BuildContext context) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.image),
        title: const Text('Nome do cuidador'),
        subtitle: const Text('R\$ 350 a hora'),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CaregiverInfoPage()),
        ),
      ));
}
