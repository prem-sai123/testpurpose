import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testpurpose/login_screen/presentation/cubit/login_cubit.dart';
import 'package:testpurpose/login_screen/presentation/widgets/login_btn_widget.dart';
import 'package:testpurpose/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController nameController ;
  late TextEditingController passwdController ;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    passwdController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
      ),
      resizeToAvoidBottomInset: false,
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginLoading) {
            const CircularProgressIndicator();
          } else if (state is LoginFailure) {
            Fluttertoast.showToast(
                msg: state.err,
                toastLength: Toast.LENGTH_SHORT,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.blue,
                textColor: Colors.black,
                fontSize: 16.0);
          } else if (state is LoginSuccess) {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, Main_Page_Route,arguments: state.list);
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Image.network('https://kkms.in/assets/img/login.png'),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwdController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              login_btn_widget(
                  nameController: nameController,
                  passwdController: passwdController),
            ],
          ),
        ),
      ),
    );
  }
}
