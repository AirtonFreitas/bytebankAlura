import 'package:flutter/material.dart';

import '../models/contacts.dart';

class ContactForm extends StatefulWidget {
 @override
 _ContactFormState createState() => _ContactFormState();}

class  _ContactFormState extends State<ContactForm>{

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Contato'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome Completo'),
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: TextField(
                controller: _accountNumberController,
                decoration: InputDecoration(labelText: 'Número da Conta'),
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  onPressed: () {
                    final String name = _nameController.text;
                    final int account = int.parse(_accountNumberController.text);
                    final Contact newContact = Contact(name, account, 0);
                    Navigator.pop(context, newContact);
                  },
                  child: Text('Salvar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
