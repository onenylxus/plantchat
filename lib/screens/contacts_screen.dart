// Import
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/models/contacts_data.dart';
import 'package:plantchat/utils/random_data.dart';
import 'package:plantchat/widgets/contacts_item.dart';

// Contacts screen class
class ContactsScreen extends StatelessWidget {
  const ContactsScreen({ super.key });

  Widget _delegate(BuildContext context, int index) {
    return ContactsItem(
      data: ContactsData(
        name: RandomData.getFullName(),
        avatarUrl: RandomData.getPictureUrl(),
        message: RandomData.getSentence(),
        date: RandomData.getDate(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.white,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(_delegate),
          ),
        ],
      ),
    );
  }
}
