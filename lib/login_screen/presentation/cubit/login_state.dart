part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  final bool user;
  final List<ADUser> list;
  LoginSuccess(this.list, {required this.user});
}

class LoginFailure extends LoginState {
  final String err;

  LoginFailure({required this.err});
}
