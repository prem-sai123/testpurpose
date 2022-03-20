import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:testpurpose/login_screen/data/model/ad_user.dart';
import 'package:testpurpose/login_screen/data/repository/ad_user_repo.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AdUserRepo userRepo;
  LoginCubit(this.userRepo) : super(LoginInitial());
  userRequest(String name, String password) {
    emit(LoginLoading());
    userRepo.checkUser(name, password).then((valBool) {
      if (valBool.userBool == true ) {
        emit(LoginSuccess(valBool.adUser!,user: valBool.userBool!));
      }else{
      emit(LoginFailure(err: 'Login Failure'));}
    });
  }
}
