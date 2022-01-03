import 'package:flutter/material.dart';
import 'package:list_view/src/model/contact_model.dart';
import 'package:list_view/src/screens/contact_item.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  builList() {
    return <ContactModel>{
      ContactModel(name: "Rodrigos Morales", email: "r@gmail.com"),
      ContactModel(name: "Alejo Bedoya", email: "a@gmail.com"),
      ContactModel(name: "Laura Marin", email: "l@gmail.com"),
      ContactModel(name: "Marcela Arango", email: "m@gmail.com"),
      ContactModel(name: "Kathe Montoua", email: "k@gmail.com"),
    };
  }

//al map le debo pasar el tipo de la lista, en este caso es un tipo de lista ContactItem, no se puede dejar en dymnamic
  List<ContactItem> buildContactList() {
    return builList()
        .map<ContactItem>((contact) => ContactItem(
              contact: contact,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contactos"),
      ),
      body: ListView(
        children: buildContactList(),
      ),
    );
  }
}
