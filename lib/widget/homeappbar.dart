import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
            Icon(
              Icons.sort,
              size: 30,
              color: Colors.blueAccent,
            ),
            Padding(padding: EdgeInsets.only(left: 20), 
            child:Text("DevHub Shop", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.blueAccent)) ,),
            Spacer(),
            Badge(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: (){},
                child: Icon(Icons.shopping_bag_outlined, size: 35, color: Colors.blueAccent),
              ),
            )
        ],
      ),
    );
  }
}