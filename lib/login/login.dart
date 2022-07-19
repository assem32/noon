import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/commponnent/commponent.dart';
import 'package:pro/login/cubit/cubit.dart';
import 'package:pro/login/cubit/states.dart';
import 'package:pro/profile/profile.dart';

var email = TextEditingController();
var pass = TextEditingController();

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener: (context,state){
          if(state is SuccessLoginState)
            Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (context)=>Profile())
              ,(route){
                return false;
              }
          );
        },
        builder: (context,state){
          return  Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 260,
                    ),
                    Text("تسجيل الدخول",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    defaultFormFiled('email', false, TextInputType.emailAddress, email),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormFiled('pass', true, TextInputType.emailAddress, pass),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      minWidth: 150,
                      height: 50,
                      color: Colors.black,
                      onPressed: () {
                        LoginCubit.get(context).userLogin(mail: email.text, pass: pass.text);
                      },
                      child: Text('Login',style: TextStyle(color: Colors.white),),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
