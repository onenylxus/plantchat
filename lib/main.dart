// Import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantchat/firebase_options.dart';
import 'package:plantchat/constants/palette.dart';
import 'package:plantchat/layouts/mobile_layout.dart';
import 'package:plantchat/layouts/responsive_layout.dart';
import 'package:plantchat/layouts/web_layout.dart';

// Main function
void main() async {
  // Ensure binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Lock mobile orientation
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

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
      theme: ThemeData(
        scaffoldBackgroundColor: Palette.white,
        splashColor: Palette.transparent,
        highlightColor: Palette.transparent,
      ),
      home: const ResponsiveLayout(
        mobileLayout: MobileLayout(),
        webLayout: WebLayout(),
      ),
    );
  }
}
