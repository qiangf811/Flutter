import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('支付'),),
      body: Center(
        child: Text('我是支付页面'),
      ),
    );
  }
}