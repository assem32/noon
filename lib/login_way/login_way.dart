import 'package:flutter/material.dart';

class LoginWay extends StatelessWidget {
  const LoginWay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebffff),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 200,),
              Text('ويب نون',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
              Text('تسجيل الدخول اي ويب نون',style: TextStyle(fontSize: 30),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  width: 240,
                  height: 50,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Facebook')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  width: 240,
                  height: 50,
                  color: Colors.grey,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(

                            child: Image(image: AssetImage('assets/icons8-google-48.png')),
                          width: 30,
                          height: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Google')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.grey,
                height: 1,
                width: double.infinity,
              ),
              Text('OR'),
              MaterialButton(
                minWidth: 240,
                color: Colors.black,
                  onPressed: () {},
                child: Text('تسجيل دخول',style: TextStyle(color: Colors.white),),
              ),
              TextButton(onPressed: (){}, child: Text('نسيت كلمة السر؟',style: TextStyle(color: Colors.black),),),
              TextButton(onPressed: (){}, child: Text('تسجيل مشترك جديد؟',style: TextStyle(color: Colors.black),),),
            ],
          ),
        ),
      ),
    );
  }
}
