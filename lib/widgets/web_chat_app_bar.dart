// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/styles.dart';
import 'package:plantchat/utils/random_data.dart';

// Web chat app bar widget class
class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.077,
      padding: const EdgeInsets.all(Dimens.paddingWebChatAppBar),
      color: Palette.lime,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: Dimens.radiusWebBarAvatar,
                backgroundImage: NetworkImage(RandomData.getPictureUrl()),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              Text(
                RandomData.getFullName(),
                style: Styles.textStyleWebChatAppBarName,
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Palette.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Palette.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
