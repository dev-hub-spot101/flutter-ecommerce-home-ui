import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for(int i =1; i < 8; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/shoe.jpg", width: 59, height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text("Shoes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blueAccent),
                )
                )
              ],
            ),
          )

      ]),
    );
  }
}