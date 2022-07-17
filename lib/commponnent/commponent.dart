import 'package:flutter/material.dart';

Widget defaultFormFiled(text,showPass,inputType,controller,{size})=>TextFormField(
  controller: controller,
  obscureText: showPass,
  keyboardType: inputType,
  decoration: InputDecoration(
    label: Text(text,style: TextStyle(fontSize: size),),

  ),
);

Widget settingItem(IconData iconData ,text)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    children: [
      Icon(iconData,size: 40,),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(text),
      )
    ],
  ),
);

Widget PricingItem(type,price,user,chapter)=>Container(
  color: Color(0xff424242),
  height: 300,
  width: 200,
  child: Column(
    children: [
      SizedBox(
        height: 24,
      ),
      Text(
        type,
        style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 12,
      ),
      Text(price,
          style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: 12,
      ),
      Text(user,
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: 12,
      ),
      Text(chapter,
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold)),
      SizedBox(
        height: 12,
      ),
      MaterialButton(
        onPressed: () {},
        child: Text(
          'buy',
          style: TextStyle(
              color: Color(0xff747474), fontWeight: FontWeight.bold),
        ),
        color: Colors.white,
      )
    ],
  ),
);