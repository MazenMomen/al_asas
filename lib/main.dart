import 'package:al_asas/data/cubits/get_courses_cubit/get_courses_cubit.dart';
import 'package:al_asas/data/cubits/login_request_cubit/login_request_cubit.dart';
import 'package:al_asas/data/cubits/mcq_cubit/mcq_cubit.dart';
import 'package:al_asas/data/cubits/youtube_player_cubit/youtube_player_cubit.dart';
import 'package:al_asas/screens/essay_exam_screen.dart';
import 'package:al_asas/screens/mcq_exam_screen.dart';
import 'package:al_asas/screens/login_screen.dart';
import 'package:al_asas/services/shared_service.dart';
import 'package:al_asas/widgets/bottom_nav_bar.dart';
import 'package:al_asas/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'data/repositories/get_courses_repo.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  bool result = await SharedService.isLoggedIn();
  Widget defaultHome = result ? const BottomNavBar() : const LoginScreen();

  runApp(MyApp(defaultHome: defaultHome));
}

class MyApp extends StatelessWidget {
  final Widget defaultHome;
  const MyApp({required this.defaultHome, super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0x00000000),
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final getCoursesRepo = GetCoursesRepo();

    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginRequestCubit>(
          create: (context) => LoginRequestCubit(),
        ),
        BlocProvider<GetCoursesCubit>(
          create: (context) => GetCoursesCubit(getCoursesRepo),
        ),
        BlocProvider<McqCubit>(
          create: (context) => McqCubit(),
        ),
        BlocProvider<YoutubePlayerCubit>(
          create: (context) => YoutubePlayerCubit(),
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
          '/mcqExam': (context) => const McqExamScreen(),
          '/essayExam': (context) => const EssayExamScreen(),
        },
        home: defaultHome,
      ),
    );
  }
}
