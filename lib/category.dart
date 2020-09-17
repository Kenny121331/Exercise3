import 'package:flutter/material.dart';

class Category{
  final String image;
  final String text1;
  final String text2;
  final double price;
  Category({this.image, this.text1, this.text2, this.price});
}

List<Category> information = [
  Category(image: 'assets/Ace.png', text1: 'Chelsea F.C.2020', text2: 'Stadium Home', price: 67.86),
  Category(image: 'assets/BlackBoard1.jpg', text1: 'Liverpool F.C.2020', text2: 'Good luck', price: 12.28),
  Category(image: 'assets/Boa1.jpg', text1: 'Man City F.C.2020', text2: 'Hello', price: 14.67),
  Category(image: 'assets/Kaido1.png', text1: 'Việt Nam F.C.2020', text2: 'Bad boy', price: 12.28),
  Category(image: 'assets/Katakuri1.png', text1: 'Lào F.C.2020', text2: 'Cute', price: 12.28),
  Category(image: 'assets/Marco1.jpg', text1: 'Sông Lam F.C.2020', text2: 'Hihi', price: 12.28),
  Category(image: 'assets/Neko1.png', text1: 'Big CityBoy', text2: 'Hello', price: 12.28),
  Category(image: 'assets/Rayleigh1.jpg', text1: 'Cam Pu Chia', text2: 'good bye', price: 14.28),
  Category(image: 'assets/Shank1.jpg', text1: 'Man rứa F.C.2020', text2: 'good morning', price: 17.28),
  Category(image: 'assets/Vivi1.jpg', text1: 'Đô rê mon F.C.2020', text2: 'Tin tin', price: 16.21),
  Category(image: 'assets/WhiteBoard1.jpg', text1: 'Shinichi F.C.2020', text2: 'Goku', price: 107.22),
  Category(image: 'assets/Momonosuke1.jpg', text1: 'End game F.C.2020', text2: 'Remix', price: 12.28),
];

class Menu{
  final String text3;
  final IconData icon;

  Menu({this.text3, this.icon});
}

List<Menu> listMenu = [
  Menu(text3: 'Home', icon: Icons.home),
  Menu(text3: 'Account Setting', icon: Icons.person),
  Menu(text3: 'My WishList', icon: Icons.favorite_border),
  Menu(text3: 'Orders', icon: Icons.show_chart),
  Menu(text3: 'Support', icon: Icons.textsms),
];

class Transaction {
  String imageCart;
  String name;
  int number;
  double price;
    Transaction({this.imageCart, this.name, this.number, this.price});
    @override
    String toString() {
    // TODO: implement toString
    return 'name: $name, price: $price';
  }
}