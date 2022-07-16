import 'package:flutter/material.dart';

Widget defaultFormFiled(text,showPass,inputType,controller)=>TextFormField(
  controller: controller,
  obscureText: showPass,
  keyboardType: inputType,
  decoration: InputDecoration(
    label: Text(text),

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