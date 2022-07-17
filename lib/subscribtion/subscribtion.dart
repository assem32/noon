import 'package:flutter/material.dart';
import 'package:pro/commponnent/commponent.dart';

class Subscription extends StatelessWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Pricing', style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PricingItem('Reader', '8\$', 'per user/one day', '5 Chapter'),
              SizedBox(
                height: 10,
              ),
              PricingItem('Reader', '8\$', 'per user/one day', '5 Chapter'),
              SizedBox(
                height: 10,
              ),
              PricingItem('Reader', '8\$', 'per user/one day', '5 Chapter'),
              SizedBox(
                height: 10,
              ),
              PricingItem('Reader', '8\$', 'per user/one day', '5 Chapter'),
            ],
          ),
        ),
      ),
    );
  }
}
