import 'package:flutter/material.dart';

class Payment extends StatefulWidget {

  int cash, points, from_index, to_index;
  Payment({this.cash, this.points, this.from_index, this.to_index});

  _PaymentState createState() => _PaymentState(cash: cash, points: points, from_index: from_index, to_index: to_index);
}

class _PaymentState extends State<Payment> {

  int cash, points, from_index, to_index;
  _PaymentState({this.cash, this.points, this.from_index, this.to_index});

  void initState() {
    cash = 500;
    points = 0;
  }

  @override
  Widget build(BuildContext context) {



  }
}