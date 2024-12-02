import 'package:cuida_mais_app/component/app_bar_component.dart';
import 'package:cuida_mais_app/component/elevated_button_component.dart';
import 'package:cuida_mais_app/pages/login/login_page.dart';
import 'package:flutter/material.dart';

//TODO usar api de CEP dos correios pra já preencher automaticamente
class AddressFormPage extends StatefulWidget {
  const AddressFormPage({super.key});

  @override
  AddressFormPageState createState() => AddressFormPageState();
}

class AddressFormPageState extends State<AddressFormPage> {
  final _formKey = GlobalKey<FormState>();

  // Controladores para os campos do formulário
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _logradouroController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _complementoController = TextEditingController();
  final TextEditingController _bairroController = TextEditingController();
  final TextEditingController _paisController = TextEditingController();
  final TextEditingController _estadoController = TextEditingController();
  final TextEditingController _municipioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('Cadastro de Endereço'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _cepController,
                decoration: const InputDecoration(labelText: 'CEP'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o CEP.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _logradouroController,
                decoration: const InputDecoration(labelText: 'Logradouro'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o logradouro.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _numeroController,
                decoration: const InputDecoration(labelText: 'Número'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o número.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _complementoController,
                decoration: const InputDecoration(labelText: 'Complemento'),
              ),
              TextFormField(
                controller: _bairroController,
                decoration: const InputDecoration(labelText: 'Bairro'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o bairro.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _paisController,
                decoration: const InputDecoration(labelText: 'País'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o país.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _estadoController,
                decoration: const InputDecoration(labelText: 'Estado'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o estado.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _municipioController,
                decoration: const InputDecoration(labelText: 'Município'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o município.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              elevatedButton(
                  label: 'Salvar', onPressedAction: () => onSave(context)),
            ],
          ),
        ),
      ),
    );
  }

  void onSave(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Cadastro salvo com sucesso!')),
      );
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  @override
  void dispose() {
    _cepController.dispose();
    _logradouroController.dispose();
    _numeroController.dispose();
    _complementoController.dispose();
    _bairroController.dispose();
    _paisController.dispose();
    _estadoController.dispose();
    _municipioController.dispose();
    super.dispose();
  }
}
