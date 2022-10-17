// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/strings.dart';
import 'package:plantchat/widgets/chat_list.dart';
import 'package:plantchat/widgets/contacts_list.dart';
import 'package:plantchat/widgets/web_chat_app_bar.dart';
import 'package:plantchat/widgets/web_profile_bar.dart';
import 'package:plantchat/widgets/web_search_bar.dart';

// Web layout class
class WebLayout extends StatelessWidget {
  const WebLayout({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children: const [
                WebProfileBar(),
                WebSearchBar(),
                ContactsList(),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(color: Palette.translucent),
              ),
              color: Palette.white,
            ),
            child: Column(
              children: [
                const WebChatAppBar(),
                const SizedBox(height: Dimens.heightWebChatSizedBox),
                const Expanded(child: ChatList()),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  padding: const EdgeInsets.all(Dimens.paddingChatTextFieldContent),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Palette.translucent),
                    ),
                    color: Palette.blue,
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Palette.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.attach_file,
                          color: Palette.white,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: Dimens.leftWebChatTextField,
                            right: Dimens.rightWebChatTextField,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Dimens.borderRadiusWebChatTextField),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                              fillColor: Palette.blue,
                              hintText: Strings.chatHint,
                              contentPadding: const EdgeInsets.only(
                                left: Dimens.paddingLeftWebChatTextField,
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
