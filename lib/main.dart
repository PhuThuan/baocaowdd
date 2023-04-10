import 'package:bao_cao/provider/my_provider.dart';
import 'package:bao_cao/screen/detai_page.dart';
import 'package:bao_cao/screen/home_page.dart';
import 'package:bao_cao/screen/login_page.dart';
import 'package:bao_cao/screen/siginup_page.dart';
import 'package:bao_cao/screen/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (index, sncpshot) {
              if (sncpshot.hasData) {
                return HomePage();
              }
              return LoginPage();
            }),
      ),
    );
  }
}
