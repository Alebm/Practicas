import 'package:flutter/material.dart';
import 'package:list_view/src/model/contact_model.dart';

class ContactItem extends StatelessWidget {
  final ContactModel contact;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ContactItem({required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(contact.name[0]),
      ),
      title: Text(contact.name),
      subtitle: Text(contact.email),
    );
  }
}
