// Import
import 'dart:math';
import 'package:faker/faker.dart';

// Random data class
class RandomData {
  static final _random = Random();
  static final _faker = Faker();

  static DateTime getDate() {
    final now = DateTime.now();
    final num = _random.nextInt(1209600);
    return now.subtract(Duration(seconds: num));
  }

  static String getFullName() {
    return _faker.person.name();
  }

  static String getPictureUrl() {
    final num = _random.nextInt(8192);
    return 'https://picsum.photos/seed/$num/300/300';
  }

  static String getSentence() {
    return _faker.lorem.sentence();
  }
}
