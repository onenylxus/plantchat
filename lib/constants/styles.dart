// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';
import 'package:plantchat/constants/palette.dart';

// Styles class
class Styles {
  // Text styles
  static const TextStyle textStyleAppBar = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: Dimens.fontSizeAppBar,
    color: Palette.white,
  );
  static const TextStyle textStyleChatMessage = TextStyle(
    fontSize: Dimens.fontSizeChatMessage,
  );
  static const TextStyle textStyleChatProperty = TextStyle(
    fontSize: Dimens.fontSizeChatProperty,
    color: Palette.white,
  );
  static const TextStyle textStyleContactsDate = TextStyle(
    fontSize: Dimens.fontSizeContactsDate,
    color: Palette.black,
  );
  static const TextStyle textStyleContactsMessage = TextStyle(
    fontSize: Dimens.fontSizeContactsMessage,
  );
  static const TextStyle textStyleContactsName = TextStyle(
    fontSize: Dimens.fontSizeContactsName,
  );
  static const TextStyle textStyleWebChatAppBarName = TextStyle(
    fontSize: Dimens.fontSizeWebChatAppBarName,
  );
  static const TextStyle textStyleWebSearchBar = TextStyle(
    fontSize: Dimens.fontSizeWebSearchBar,
  );
}
