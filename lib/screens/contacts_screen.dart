// Import
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/widgets/contacts_list.dart';

// Contacts screen class
class ContactsScreen extends StatelessWidget {
  const ContactsScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      child: const ContactsList(),
    );
  }
}
