import 'package:flutter/material.dart';

import '../models/contacts.dart';
import 'contact_form.dart';

class ContactsList extends StatelessWidget {
  final List<Contact> contacts = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return _ContactItem();
        },
        itemCount: contacts.length,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (builder) => ContactForm(),
            ),
          ).then((newContact) => debugPrint(newContact.toString()),);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
class _ContactItem extends StatelessWidget {
  final Contact contact;
  _ContactItem(item.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name, style: TextStyle(fontSize: 24)),
        subtitle: Text(contact.account.toString(), style: TextStyle(fontSize: 16)),
      ),
    );
  }
}

