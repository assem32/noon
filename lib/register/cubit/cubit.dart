import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/model/model.dart';
import 'package:pro/register/cubit/states.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String mail,
    required String pass,
    required String phone,
  }) {
    emit(RegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: mail, password: pass
    ).then((value) {
      userCreate(name: name, mail: mail, phone: phone, uId: value.user!.uid);

      RegisterSuccessState();
    }).catchError((error) {
      emit(RegisterErrorState(error.toString()));
    });
  }

  void userCreate({
    required String name,
    required String mail,
    required String phone,
    required String uId,

  }) {
    bookModel model = bookModel(
      name: name,
      mail: mail,
      phone: phone,
      uId: uId,
    );
    FirebaseFirestore
        .instance
        .collection('user')
        .doc(uId
    ).set(model.toMap())
        .then((value) {
      emit(CreateUserSuccessState());
    }).catchError((error) {
      emit(CreateUserErrorState(error));
    });
  }
}