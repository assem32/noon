import 'package:flutter/material.dart';
import 'package:pro/commponnent/commponent.dart';

var email = TextEditingController();
var pass = TextEditingController();
var name = TextEditingController();
var phone = TextEditingController();

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onPressed: () {},
                child: Text('Login',style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
