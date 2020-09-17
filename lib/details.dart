import 'package:flutter/material.dart';
import 'cart.dart';
import 'category.dart';



class Details extends StatefulWidget{
  static final routerName = '/Details';
  final String image1;
  final String text3;
  final String text4;
  final double price1;
  Details({this.image1, this.text3, this.text4, this.price1});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsState(image1: image1, text3: text3, text4: text4, price1: price1);
  }
}

class _DetailsState extends State<Details>{
  final String image1;
  final String text3;
  final String text4;
  final double price1;
  _DetailsState({this.image1, this.text3, this.text4, this.price1});

  bool _like = true;
  void _toggleLike(){
    setState(() {
      _like = ! _like;
    });
  }

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
            icon: Icon(Icons.keyboard_backspace, color: Colors.black),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_basket, color: Colors.black,),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
                height: 330,
                child: Stack(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: 330,
                      child: Image(
                        image: AssetImage(args.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 280),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: IconButton(
                                icon: Icon(_like ? Icons.favorite_border : Icons.favorite),
                                iconSize: 35,
                                color: Colors.red,
                                onPressed:_toggleLike,
                              ),
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Text(
                '\$${args.price}',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              Text(
                'Nike P.C.Women\'s Tie-Dye Football Shirt',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'The nice P.C.Shirt blends 2 summer favorites: festivals '
                    'and football. Soft, sweat-wicking fabric and a mesh '
                    'racerback help you stay comfortable on the pitch or in the crowd.',
                style: TextStyle(fontSize: 13),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 160,
                    height: 40,
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: (){},
                      child: Row(
                        children: [
                          Text(
                            'XS(UK 4-6)',
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 160,
                    height: 40,
                    child: RaisedButton(
                      color: Colors.red,
                      onPressed: (){
                        Navigator.pushNamed(
                            context,
                            Cart.routerName,
                            arguments: Category(
                              image: args.image,
                              text1: args.text1,
                              text2: args.text2,
                              price: args.price
                            )
                        );
                      },
                      child: Text(
                        'Add to bag',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}