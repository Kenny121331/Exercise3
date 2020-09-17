import 'package:flutter/material.dart';
import 'cart.dart';
import 'category.dart';
import 'checkOut.dart';
import 'details.dart';
import 'home_widget.dart';
import 'list.dart';
import 'search.dart';


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: Home.routerName,
      onGenerateRoute: (settings){
        if(settings.name == Details.routerName) {
          final Category args = settings.arguments;
          return MaterialPageRoute(
            builder: (context) {
              return Details(
                image1: args.image,
                text3: args.text1,
                text4: args.text2,
                price1: args.price,
              );
            }
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      routes: {
        Home.routerName : (context) => Home(),
        Details.routerName : (context) => Details(),
        '/List1' : (context) => List1(),
        '/CheckOut' : (context) => CheckOut(),
        '/Search' : (context) => Search(),
        Cart.routerName: (context) => Cart(),
        CheckOut.routerName: (context) => CheckOut()
      },
      home: SafeArea(
        child: Home(),
      ),
    );
  }
}