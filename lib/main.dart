import 'package:baca_quran/pages/on_boarding_page.dart';
import 'package:baca_quran/providers/surah_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SurahProvider>(
          create: (context) => SurahProvider(),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingPage(),
      ),
    );
  }
}
