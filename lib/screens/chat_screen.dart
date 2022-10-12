// Import
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/strings.dart';
import 'package:plantchat/models/chat_data.dart';
import 'package:plantchat/utils/random_data.dart';
import 'package:plantchat/widgets/chat_item.dart';

// Chat screen class
class ChatScreen extends StatelessWidget {
  const ChatScreen({ super.key });

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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.lime,
        centerTitle: false,
        title: Text(RandomData.getFullName()),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.video_call,
              color: Palette.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.call,
              color: Palette.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Palette.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(_delegate),
                ),
              ]
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              fillColor: Palette.blue,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalChatTextFieldIcon),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Palette.white,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Dimens.paddingHorizontalChatTextFieldIcon),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.camera_alt,
                      color: Palette.white,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Palette.white,
                    ),
                    Icon(
                      Icons.money,
                      color: Palette.white,
                    ),
                  ],
                ),
              ),
              hintText: Strings.chatHint,
              contentPadding: const EdgeInsets.all(Dimens.paddingChatTextFieldContent),
            ),
          ),
        ],
      ),
    );
  }
}
