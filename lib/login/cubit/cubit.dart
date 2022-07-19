import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/login/cubit/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String mail,
    required String pass,}) {
    emit(LoadingLoginState());
    FirebaseAuth.instance.signInWithEmailAndPassword
      (
        email: mail,
        password: pass
    ).then((value) {
      emit(SuccessLoginState(value.user!.uid));
    }).catchError((error) {
      emit(ErrorLoginState(error.toString()));
    });
  }
}