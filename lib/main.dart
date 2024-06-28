import 'package:al_asas/data/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:al_asas/data/cubits/mcq_cubit/mcq_cubit.dart';
import 'package:al_asas/screens/essay_exam_screen.dart';
import 'package:al_asas/screens/mcq_exam_screen.dart';
import 'package:al_asas/screens/login_screen.dart';
import 'package:al_asas/screens/watch_lecture_screen.dart';
import 'package:al_asas/widgets/bottom_nav_bar.dart';
import 'package:al_asas/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        statusBarColor: Color(0x00000000),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<McqCubit>(
          create: (context) => McqCubit(),
        ),
        BlocProvider<GetCoursesCubit>(
          create: (context) => GetCoursesCubit(),
        ),
      ],
      child: MaterialApp(
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
          '/bottomNavBar': (context) => const BottomNavBar(),
          '/login': (context) => const LoginScreen(),
          '/signUp': (context) => const SignUpScreen(),
          '/watchLecture': (context) => const WatchLectureScreen(),
          '/mcqExam': (context) => const McqExamScreen(),
          '/essayExam': (context) => const EssayExamScreen(),
        },
        home: const SignUpScreen(),
      ),
    );
  }
}
