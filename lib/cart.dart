import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'checkOut.dart';
import 'home_widget.dart';
import 'details.dart';

class Cart extends StatefulWidget{
  static final routerName = '/Cart';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CartState();
  }
}

class _CartState extends State<Cart>{

  @override
  Widget build(BuildContext context) {
    final Category args = ModalRoute.of(context).settings.arguments;

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close, color: Colors.black),
            onPressed: (){
              Navigator.pushNamed(
                  context,
                  Home.routerName
              );
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              'Cart',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Container(
              color: Colors.white,
              width: double.infinity,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image(
                          image: AssetImage(args.image),
                          fit: BoxFit.cover,
                          width: 100,
                          height: 125,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(args.text1, style: TextStyle(fontSize: 18)),
                              Text(args.text2, style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 125),
                          child: Text('x1', style: TextStyle(fontSize: 16),),
                        ),
                        Text('\$${args.price}', style: TextStyle(fontSize: 16, color: Colors.red),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160),
            child: Container(
              width: double.infinity,
              height: 149,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('total', style: TextStyle(fontSize: 21)),
                          Text('\$${args.price}', style: TextStyle(fontSize: 21, color: Colors.red))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: SizedBox(
                        width: 360,
                        height: 60,
                        child: RaisedButton(
                          color: Colors.black,
                          splashColor: Colors.green,
                          onPressed: (){
                            Navigator.pushNamed(
                                context,
                                CheckOut.routerName,
                                arguments: Category(
                                  price: args.price
                                )
                            );
                          },
                          child: Text('Check out', style: TextStyle(color: Colors.white, fontSize: 21)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}