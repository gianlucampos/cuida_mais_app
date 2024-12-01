import 'package:cuida_mais_app/component/input_text_component.dart';
import 'package:cuida_mais_app/pages/home/home_page.dart';
import 'package:cuida_mais_app/pages/login/create_account_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Cuida +',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .merge(const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const Divider(color: Colors.transparent, height: 10),
            Center(
              child: Text(
                'Cuidado home care é a nossa prioridade!',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .merge(const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
            const Divider(color: Colors.transparent, height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    inputText(label: 'Email'),
                    inputText(label: 'Senha'),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              child: const Text('Entrar'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              ),
            ),
            ElevatedButton(
              child: const Text('Não tenho uma conta!'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CreateAccountPage()),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
