import 'package:connect_fix/pages/dashboard/blocs/user_blocs.dart';
import 'package:connect_fix/pages/splash_screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UserBlocs())],
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "ConnectFix",
          home: Splash(),
        ),
      ),
    );
  }
}
