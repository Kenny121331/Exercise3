import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'details.dart';

class Home extends StatefulWidget{
  static final routerName = '/Home';
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class _HomeState extends State<Home>{

List<String> image1 = ['assets/Luffy.jpg','assets/Nami.jpg','assets/Brook.jpg',
  'assets/Chopper.jpg', 'assets/Zoro.jpg','assets/Sanji.jpg',
  'assets/Robin.jpg','assets/Franky.jpg'
];


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Builder(
              builder: (context) => IconButton(
                icon: new Icon(Icons.short_text, color: Colors.black),
                onPressed: () => Scaffold.of(context).openDrawer(),
              )
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: (){
                Navigator.pushNamed(context, '/List1');
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'New Release',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                '2020/2021',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            Stack(
              children: <Widget>[
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: image1.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          child: Image.asset(image1[index]),
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 50),
                  child: SizedBox(
                    height: 40,
                    width: 140,
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/Search');
                      },
                      splashColor: Colors.red,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Women\'s',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Kits \& jerseys',
                                style: TextStyle(fontSize: 13, color: Colors.grey),
                              )
                            ],
                          ),
                          Icon(Icons.trending_flat),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Trending',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 270,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                    child: GridView.builder(
                        itemCount: information.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 2/3.5,
                            crossAxisSpacing: 6,
                            mainAxisSpacing: 6
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Image(
                                image: AssetImage(information[index].image),
                                fit: BoxFit.cover,
                                width: 170,
                                height: 230,
                              ),
                              Text(
                                information[index].text1,
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                information[index].text2,
                                style: TextStyle(fontSize: 13),
                              ),
                              Text(
                                '\$${information[index].price}',
                                style:  TextStyle(fontSize: 13, color: Colors.red),
                              )
                            ],
                          ),
                        )
                    )
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          width: 80,
                          child: Image(
                            image: AssetImage('assets/Grap.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Monkey D Grap',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'View profile',
                                style: TextStyle(fontSize: 16, color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: IconButton(
                        icon: Icon(Icons.close),
                        color: Colors.black,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(
                      context,
                      Home.routerName
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 12),
                  child: Row(
                    children: <Widget>[
                      Icon(listMenu[0].icon),
                      Text(
                        listMenu[0].text3,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              line(listMenu[1].text3, listMenu[1].icon),
              line(listMenu[2].text3, listMenu[2].icon),
              line(listMenu[3].text3, listMenu[3].icon),
              line(listMenu[4].text3, listMenu[4].icon),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 12),
                child: GestureDetector(
                  child: Text(
                    'Log out',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget line(String text3, IconData icon){
  return InkWell(
    child: Padding(
      padding: const EdgeInsets.only(top: 15, left: 12),
      child: Row(
        children: <Widget>[
          Icon(icon),
          Text(
              text3,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ),
  );
}