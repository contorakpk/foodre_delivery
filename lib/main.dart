import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodre_delivery/notifiers/food_notifier.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'pages/welcome_page.dart';
import 'pages/error_page.dart';
import 'pages/loading_page.dart';
import 'package:provider/provider.dart';
import 'package:foodre_delivery/notifiers/food_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter();
  await Hive.openBox('appData');
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FoodNotifier(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.teal[500],
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return ErrorPage();
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return WelcomePage();
            }
            return LoadingPage();
          }),
    );
  }
}
