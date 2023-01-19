import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for( int i=1; i < 11; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("-40%", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red, 
                  )
                ],
              ),

              InkWell(
                onTap: (){},
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("assets/images/shoe.jpg", height: 130, width: 130),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text("Product Title", style: TextStyle(fontSize: 18, color: Colors.blueAccent, fontWeight: FontWeight.bold),),
              ),

              Container(
                alignment: Alignment.centerLeft,
                child: Text("show here discription of the product", style: TextStyle(fontSize: 15, color: Colors.grey[400]),),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$50", style: TextStyle(fontSize: 16, color: Colors.blueAccent, fontWeight: FontWeight.w600)),
                    Icon(Icons.shopping_cart_checkout, color: Colors.blueAccent)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}