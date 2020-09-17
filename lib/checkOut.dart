import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category.dart';

class CheckOut extends StatefulWidget{
  static final routerName = '/CheckOut';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckOutState();
  }
}

class _CheckOutState extends State<CheckOut>{

  bool cashOnDelivery = false;
  bool applePay = false;
  bool creditCard = false;

  void _CashOnDelivery(){
    setState(() {
      cashOnDelivery = ! cashOnDelivery;
      applePay = false;
      creditCard = false;
    });
  }
  void _ApplePay(){
    setState(() {
      applePay = ! applePay;
      cashOnDelivery = false;
      creditCard = false;
    });
  }
  void _CreditCard(){
    setState(() {
      creditCard = ! creditCard;
      applePay = false;
      cashOnDelivery = false;
    });
  }

  Widget text(String text){
    return Text(
      text, style: TextStyle(fontSize: 18),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Category args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white54,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.grey,
            leading: IconButton(
              icon: Icon(Icons.keyboard_backspace, color: Colors.black),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              Icon(Icons.more_horiz, color: Colors.black)
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Check out', style: TextStyle(fontSize: 30),
                      ),
                      text('Payment Method'),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: text('Cash on Delivery'),
                            ),
                            IconButton(
                              icon: Icon(cashOnDelivery ? Icons.check_circle : Icons.panorama_fish_eye),
                              onPressed: _CashOnDelivery,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: text('Apple Pay'),
                              ),
                              IconButton(
                                icon: Icon(applePay ? Icons.check_circle : Icons.panorama_fish_eye),
                                onPressed: _ApplePay,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: text('Debit / Credit Card'),
                              ),
                              IconButton(
                                icon: Icon(creditCard ? Icons.check_circle : Icons.panorama_fish_eye),
                                onPressed: _CreditCard,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: text('Shipping Address'),
                      ),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: text('Primary Address'),
                            ),
                            Container(
                              color: Colors.grey,
                              width: 40,
                              height: 40,
                              child: IconButton(
                                icon: Icon(Icons.expand_more, color: Colors.black),
                                onPressed: (){},
                              ),
                            )
                          ],
                        ),
                      ),
                      text('Coupon'),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(
                                'Enter code',
                                style: TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.black,
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.security, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text('Delivery Fee'),
                              text('\$45')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total', style: TextStyle(fontSize: 21)),
                              Text('\$${args.price}', style: TextStyle(fontSize: 21)),
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            height: 60,
                            child: RaisedButton(
                              color: Colors.black,
                              onPressed: (){},
                              child: Text(
                                'Check Out',
                                style: TextStyle(fontSize: 21, color: Colors.white),
                              ),
                            )
                          )
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}