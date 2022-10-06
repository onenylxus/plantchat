// Import
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/styles.dart';
import 'package:plantchat/models/contacts_data.dart';

// Contacts item widget class
class ContactsItem extends StatelessWidget {
  const ContactsItem({
    super.key,
    required this.data,
  });

  final ContactsData data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.heightContactsItem,
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: Dimens.paddingVerticalContactsItem),
              child: ListTile(
                title: Text(
                  data.name,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyleContactsName,
                ),
                subtitle: Text(
                  data.message,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyleContactsMessage,
                ),
                leading: CircleAvatar(
                  radius: Dimens.radiusContactsAvatar,
                  backgroundImage: NetworkImage(data.avatarUrl),
                ),
                trailing: Text(
                  Jiffy(data.date).fromNow(),
                  style: Styles.textStyleContactsDate,
                ),
              ),
            ),
          ),
          const Divider(
            color: Palette.translucent,
          ),
        ],
      ),
    );
  }
}
