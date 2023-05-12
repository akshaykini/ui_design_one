import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widget/row_wid_one.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imageurl = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4Lv7bzAX4M7W_F0HB8f2PRR5_w_4-mGZhyw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTStSMv9J0DOeTMmQ2OzbYYQnHhm84zsXSlZQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQooMCmrTFhj1HMu7SDkZ5oeUEQQ_R7_UMFUw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5reLMT6d8X0FZpizIFSvQjJL2wh-bRDdByQ&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
        titleTextStyle: TextStyle(fontFamily: 'Perpetua', fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        
        
        items: [
        BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.house)),
        BottomNavigationBarItem(label: 'Messages', icon: Icon(Icons.message)),
        BottomNavigationBarItem(label: 'Cart', icon: Icon(Icons.abc)),
        BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.person)),
      ]
      
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: imageurl.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.network(
                        imageurl[itemIndex],
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 10,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                ),
                options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    height: 150,
                    aspectRatio: double.infinity),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row_One(dockname: 'Flash Sales', iconname: Icons.shop),
                    Row_One(dockname: 'Collections', iconname: Icons.collections),
                    Row_One(dockname: 'Vouchers', iconname: Icons.card_giftcard),
                    Row_One(dockname: 'Categories', iconname: Icons.add),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      
    ));
  }
}
