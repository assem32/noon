import 'package:flutter/material.dart';
import 'package:pro/commponnent/commponent.dart';

var email = TextEditingController();
var pass = TextEditingController();

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
              onPressed: () {},
              child: Text('Login',style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
