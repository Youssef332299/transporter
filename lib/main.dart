import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:transporter/screens/customer/customer_view.dart';
import 'package:transporter/screens/on_boarding/on_boarding_view.dart';
import 'package:transporter/screens/splash/splash_view.dart';
import 'data/firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: CustomerPage(),
        // home: SplashPage(),
        home: OnBoardingPage(),
        // locale: const Locale('en'),
        // localizationsDelegates: locale,
        // supportedLocales: S.delegate.supportedLocales,
    );
  }
}