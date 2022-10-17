// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/utils/random_data.dart';

// Web profile bar widget class
class WebProfileBar extends StatelessWidget {
  const WebProfileBar({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.077,
      padding: const EdgeInsets.all(Dimens.paddingWebProfileBar),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Palette.black),
        ),
        color: Palette.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: Dimens.radiusWebBarAvatar,
            backgroundImage: NetworkImage(RandomData.getPictureUrl()),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment,
                  color: Palette.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Palette.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
