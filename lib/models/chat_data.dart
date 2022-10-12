// Import
import 'package:meta/meta.dart';

// Chat data class
@immutable
class ChatData {
  const ChatData({
    required this.self,
    required this.message,
    required this.date,
  });

  final bool self;
  final String message;
  final DateTime date;
}
