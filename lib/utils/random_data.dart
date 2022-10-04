// Import
import 'dart:math';

// Random data class
class RandomData {
  static final random = Random();

  static String getPictureUrl() {
    final num = random.nextInt(8192);
    return 'https://picsum.photos/seed/$num/300/300';
  }

  static DateTime getDate() {
    final now = DateTime.now();
    final num = random.nextInt(1209600);
    return now.subtract(Duration(seconds: num));
  }
}
