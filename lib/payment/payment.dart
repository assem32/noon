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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 280,
              width: 200,
              child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/beautiful-book-cover-mockup_23-2149152256.jpg')),
            ),
            MaterialButton(
              color: Color(0xff616161),
              onPressed: () {},
              child: Text('Buy Now'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Paymant',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        height: 50,
                        width: 200,
                        child: defaultFormFiled(
                            'Card number', false, TextInputType.number, cardNum,
                            size: 10.0)),
                    Container(
                        height: 50,
                        width: 200,
                        child: defaultFormFiled(
                            'Card Name', false, TextInputType.number, cardNum,
                            size: 10.0)),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 40,
                          color: Color(0xff616161),
                          child: Image(
                              image: AssetImage('assets/icons8-visa-50.png'),
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 50,
                          height: 40,
                          color: Color(0xff616161),
                          child: Image(
                            image: AssetImage(
                                'assets/406085_card_credit_master_mastercard_icon.png'),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 50,
                          height: 40,
                          color: Color(0xff616161),
                          child: Image(
                            image: AssetImage('assets/paypal-logo.png'),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: 100,
                            child: defaultFormFiled(
                                'mm/yy', false, TextInputType.number, date,
                                size: 10.0)),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 100,
                            child: defaultFormFiled(
                                'cvv', false, TextInputType.number, cvv,
                                size: 10.0)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            width: 100,
                            child: defaultFormFiled('zip/postal', false,
                                TextInputType.number, postal,
                                size: 10.0)),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                            width: 100,
                            child: defaultFormFiled(
                                '54654', false, TextInputType.number, number,
                                size: 10.0)),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Pay',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Color(0xff424242),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
