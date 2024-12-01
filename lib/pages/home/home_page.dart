import 'package:cuida_mais_app/pages/home/caregiver_info_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de profissionais'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListTile(
          leading: const Icon(Icons.image),
          title: const Text('Nome do cuidador'),
          subtitle: const Text('R\$ 350 a hora'),
          tileColor: Colors.blue,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CaregiverInfoPage()),
          ),
        ),
      ),
    );
  }
}
