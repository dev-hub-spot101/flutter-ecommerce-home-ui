import 'package:ecommerceui/widget/categorieswidget.dart';
import 'package:ecommerceui/widget/homeappbar.dart';
import 'package:ecommerceui/widget/itemwidget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:ListView(
            children: [
              HomeAppBar(),
              Container(
                // height: 500,
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            height: 50,
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search..."
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.camera_alt, size: 25, color: Colors.blueAccent)
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Text("Categories", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                    ),

                    CategoriesWidget(),


                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text("Best Selling", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                    ),

                    ItemsWidget()

                  ],
                ),
              )
            ],
        ),
      )
    );
  }
}