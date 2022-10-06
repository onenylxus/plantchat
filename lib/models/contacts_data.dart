// Import
import 'package:meta/meta.dart';

// Contacts data class
@immutable
class ContactsData {
  const ContactsData({
    required this.name,
    required this.avatarUrl,
    required this.message,
    required this.date,
  });

  final String name;
  final String avatarUrl;
  final String message;
  final DateTime date;
}
