import 'package:flutter/material.dart';
import 'package:testpurpose/login_screen/data/ad_user_networkservice.dart';
import 'package:testpurpose/login_screen/data/repository/ad_user_repo.dart';
import 'package:testpurpose/utils/router.dart';

void main() {
  final AdUserNetWorkService serv = AdUserNetWorkService();
  final AdUserRepo respo = AdUserRepo(adUserNS: serv);
  runApp(TestApp(
    router: MyCustomRouter(respo),
  ));
}

class TestApp extends StatelessWidget {
  final MyCustomRouter router;
  const TestApp({Key? key, required this.router}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: router.generatePageRouter,
    );
  }
}
