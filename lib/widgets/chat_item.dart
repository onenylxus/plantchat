// Import
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/styles.dart';
import 'package:plantchat/models/chat_data.dart';

// Chat item widget class
class ChatItem extends StatelessWidget {
  const ChatItem({
    super.key,
    required this.data,
  });

  final ChatData data;

  @override
  Widget build(BuildContext context) {
    final AlignmentGeometry alignment = data.self ? Alignment.centerRight : Alignment.centerLeft;
    final Color color = data.self ? Palette.lime : Palette.cobalt;
    final double bottom = data.self ? Dimens.bottomChatItemSelf : Dimens.bottomChatItemReceived;
    final Widget child;

    if (data.self) {
      child = Row(
        children: [
          Text(
            Jiffy(data.date).Hm,
            style: Styles.textStyleChatProperty,
          ),
          const SizedBox(width: Dimens.widthChatTextGap),
          const Icon(
            Icons.done_all,
            size: Dimens.sizeChatTextDone,
            color: Palette.white,
          ),
        ],
      );
    } else {
      child = Text(
        Jiffy(data.date).Hm,
        style: Styles.textStyleChatProperty,
      );
    }

    return Align(
      alignment: alignment,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width + Dimens.biasChatItemWidthConstraint,
        ),
        child: Card(
          margin: const EdgeInsets.symmetric(
            horizontal: Dimens.marginHorizontalChatItem,
            vertical: Dimens.marginVerticalChatItem,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.borderRadiusChatItem),
          ),
          color: color,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Dimens.paddingLeftChatText,
                  right: Dimens.paddingRightChatText,
                  top: Dimens.paddingTopChatText,
                  bottom: Dimens.paddingBottomChatText,
                ),
                child: Text(
                  data.message,
                  style: Styles.textStyleChatMessage,
                ),
              ),
              Positioned(
                right: Dimens.rightChatItem,
                bottom: bottom,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
