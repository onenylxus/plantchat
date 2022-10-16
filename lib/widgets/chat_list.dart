// Import
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:plantchat/models/chat_data.dart';
import 'package:plantchat/widgets/chat_item.dart';
import 'package:plantchat/utils/random_data.dart';

// Chat list widget class
class ChatList extends StatelessWidget {
  const ChatList({ super.key });

  Widget _delegate(BuildContext context, int index) {
    return ChatItem(
      data: ChatData(
        self: Random().nextBool(),
        message: RandomData.getSentence(),
        date: RandomData.getDate(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(_delegate),
        ),
      ],
    );
  }
}
