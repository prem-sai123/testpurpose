// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testpurpose/login_screen/presentation/cubit/login_cubit.dart';

class login_btn_widget extends StatelessWidget {
  const login_btn_widget({Key? key, 
    required this.nameController,
    required this.passwdController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController passwdController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () async {
            print('${nameController},${passwdController}');

            await BlocProvider.of<LoginCubit>(context).userRequest(
                nameController.text, passwdController.text);
          },
          child: state is LoginLoading
              ? const Text('Loading')
              : const Text('Log in'),
        );
      },
    );
  }
}
