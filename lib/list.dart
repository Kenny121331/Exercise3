import 'package:flutter/material.dart';
import 'category.dart';
import 'details.dart';
import 'home_widget.dart';

class List1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _List1State();
  }
}

class _List1State extends State<List1>{
  @override
  Widget build(BuildContext context) {
    final Category args = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.keyboard_backspace, color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
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
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Women\'s',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                      ),
                      IconButton(
                        icon: Icon(Icons.tune),
                      )
                    ],
                  )
                ],
              ),
              Text(
                'Football(Soccer)/Jerseys',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              SizedBox(
                width: double.infinity,
                height: 400,
                child: GridView.builder(
                    itemCount: information.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6,
                        childAspectRatio: 2/2.5
                    ),
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(
                          context,
                          Details.routerName,
                          arguments: Category(
                            image: information[index].image,
                            text1: information[index].text1,
                            text2: information[index].text2,
                            price: information[index].price
                          )
                        );
                      },
                      child: Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage(information[index].image),
                            fit: BoxFit.cover,
                            width: 120,
                            height: 150,
                          ),
                          Text(information[index].text1, style: TextStyle(fontSize: 14)),
                          Text(information[index].text2, style: TextStyle(fontSize: 14)),
                          Text('\$${information[index].price}', style: TextStyle(fontSize: 14, color: Colors.red)),
                        ],
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}