import 'package:flutter/material.dart';
import 'package:pro/commponnent/commponent.dart';
var cardNum = TextEditingController();
var cardName = TextEditingController();
var date = TextEditingController();
var cvv = TextEditingController();
var postal = TextEditingController();
var number = TextEditingController();

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
              image: AssetImage(
                  'assets/beautiful-book-cover-mockup_23-2149152256.jpg')),
          MaterialButton(
            color: Color(0xff616161),
            onPressed: () {},
            child: Text('Buy Now'),
          ),
          defaultFormFiled('Card number', false, TextInputType.number, cardNum),
          defaultFormFiled('Card Name', false, TextInputType.number, cardNum),
          Row(
            children: [

            ],
          )
        ],
      ),
    );
  }
}
