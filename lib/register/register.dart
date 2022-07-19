import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro/commponnent/commponent.dart';
import 'package:pro/profile/profile.dart';
import 'package:pro/register/cubit/cubit.dart';
import 'package:pro/register/cubit/states.dart';

var email = TextEditingController();
var pass = TextEditingController();
var name = TextEditingController();
var phone = TextEditingController();

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterStates>(
        listener: (context,state){
        },
        builder: (context,state){
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 260,
                    ),
                    Text('انشاء حساب ويب نون',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormFiled('name', false, TextInputType.emailAddress, name),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormFiled('email', false, TextInputType.emailAddress, email),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormFiled('pass', false, TextInputType.emailAddress, pass),
                    SizedBox(
                      height: 15,
                    ),
                    defaultFormFiled('phone', false, TextInputType.emailAddress, phone),
                    SizedBox(
                      height: 15,
                    ),
                    MaterialButton(
                      minWidth: 150,
                      height: 50,
                      color: Colors.black,
                      onPressed: () {
                        RegisterCubit.get(context).userRegister(name: name.text, mail: email.text, pass: pass.text, phone: phone.text);
                      },
                      child: Text('Register',style: TextStyle(color: Colors.white),),
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
