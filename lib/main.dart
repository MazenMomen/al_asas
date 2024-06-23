import 'package:al_asas/screens/essay_exam_screen.dart';
import 'package:al_asas/screens/mcq_exam_screen.dart';
import 'package:al_asas/screens/login_screen.dart';
import 'package:al_asas/screens/watch_lecture_screen.dart';
import 'package:al_asas/widgets/bottom_nav_bar.dart';
import 'package:al_asas/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFFFFFFF),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Al Asas',
      routes: {
        '/bottomNavBar': (context) => BottomNavBar(),
        '/login': (context) => const LoginScreen(),
        '/signUp': (context) => const SignUpScreen(),
        '/watchLecture': (context) => const WatchLectureScreen(),
        '/mcqExam': (context) => const McqExamScreen(),
        '/essayExam': (context) => const EssayExamScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
