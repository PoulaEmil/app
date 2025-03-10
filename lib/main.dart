import 'package:first_practice_flutter/providers/categories__provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'screens/categories_screen.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: CategoryProvider())
  ],
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        hoverColor: const Color.fromARGB(255, 156, 156, 156).withOpacity(0.2),
        primaryColor: const Color.fromARGB(221, 110, 110, 110),
        useMaterial3: true,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const CategoriesScreen(),
    );
  }
}
