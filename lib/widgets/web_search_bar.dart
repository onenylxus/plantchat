// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/constants/styles.dart';

// Web search bar widget class
class WebSearchBar extends StatelessWidget {
  const WebSearchBar({ super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.all(Dimens.paddingWebSearchBar),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Palette.translucent),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Palette.black,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimens.borderRadiusWebSearchTextField),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.paddingHorizontalWebChatTextField,
            ),
            child: Icon(
              Icons.search,
              size: Dimens.sizeWebSearchIcon,
            ),
          ),
          hintStyle: Styles.textStyleWebSearchBar,
          hintText: 'Search or start new chat',
          contentPadding: const EdgeInsets.all(Dimens.paddingWebSearchBarTextField),
        ),
      ),
    );
  }
}
