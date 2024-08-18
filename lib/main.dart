import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagra_flutter/responsive/mobile_screen_layout.dart';
import 'package:instagra_flutter/responsive/responsive_layout_screen.dart';
import 'package:instagra_flutter/responsive/web_screen_layout.dart';
import 'package:instagra_flutter/screens/login_screen.dart';
import 'package:instagra_flutter/screens/signup_screen.dart';
import 'package:instagra_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: ' AIzaSyDm7kSeRM7HolP1JjLrTy84vnU1grYdNmw',
        appId: "1:274834775069:web:f18d6d0ff5d4ad773c7af4",
        messagingSenderId: "274834775069",
        projectId: "instagra-flutter",
        storageBucket: "instagra-flutter.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagra Flutter',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
