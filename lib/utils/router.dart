import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testpurpose/login_screen/data/repository/ad_user_repo.dart';
import 'package:testpurpose/default_screen/main_page.dart';
import 'package:testpurpose/login_screen/presentation/cubit/login_cubit.dart';
import 'package:testpurpose/login_screen/presentation/screen/login_screen.dart';

import 'constants.dart';

class MyCustomRouter {
  final AdUserRepo userRepo;
  MyCustomRouter(this.userRepo);
  Route? generatePageRouter(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: LoginCubit(userRepo),
            child: const LoginScreen(),
          ),
        );
      case Main_Page_Route:
        return MaterialPageRoute(
          builder: (_) => MainPage(settings.arguments),
        );
      default:
        return null;
    }
  }
}
