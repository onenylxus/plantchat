// Import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:plantchat/firebase_options.dart';
import 'package:plantchat/layouts/mobile_layout.dart';
import 'package:plantchat/layouts/web_layout.dart';
import 'package:plantchat/shared/colors.dart';
import 'package:plantchat/utils/responsive_layout.dart';

// Main function
void main() async {
  // Ensure binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run application
  runApp(const MyApp());
}

// Application class
class MyApp extends StatelessWidget {
  const MyApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plantchat',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileLayout: MobileLayout(),
        webLayout: WebLayout(),
      ),
    );
  }
}
