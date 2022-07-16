import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Profile',style: TextStyle(color:Color(0xff08d7cf) ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/icons8-user-96.png',),color: Color(0xff08d7cf),),
                    Text('User Name',),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('My Actvity',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Subscribtion',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Downloads',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Comments',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('My Library',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Recent',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    SizedBox(
                      height: 15,
                    ),
                    Text('My works',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
