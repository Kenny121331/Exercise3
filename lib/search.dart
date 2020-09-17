import 'package:flutter/material.dart';
import 'list_menu.dart';
import 'category.dart';
import 'home_widget.dart';

class Search extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchState();
  }
}

class _SearchState extends State<Search>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Builder(
                builder: (context) => IconButton(
                  icon: new Icon(Icons.short_text, color: Colors.black),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
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
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, color: Colors.black,),
                    hintText: 'What are you looking for?',
                    hintStyle: TextStyle(fontSize: 18),
                    fillColor: Colors.grey
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: TabBar(
                    indicatorColor: Colors.grey,
                    tabs: <Widget>[
                      Text('Jersey', style: TextStyle(fontSize: 18, color: Colors.black)),
                      Text('Kits', style: TextStyle(fontSize: 18, color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: TabBarView(
                    children: <Widget>[
                      ListView.builder(
                          itemCount: menuJersey.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    menuJersey[index].iconMenu,
                                    Text(menuJersey[index].textMenu, style: TextStyle(fontSize: 18),)
                                  ],
                                ),
                                Text('${menuJersey[index].number} >', style: TextStyle(fontSize: 18))
                              ],
                            ),
                          )
                      ),
                      ListView.builder(
                          itemCount: menuKits.length,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    menuKits[index].iconMenu,
                                    Text(menuKits[index].textMenu, style: TextStyle(fontSize: 18))
                                  ],
                                ),
                                Text('${menuKits[index].number} >', style: TextStyle(fontSize: 18))
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                )
              ],
            ),
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
                line(listMenu[0].text3, listMenu[0].icon),
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
      )
    );
  }
}

