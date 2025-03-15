import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/single_item_screen.dart';

class ItemsWidget extends StatelessWidget {
  final List<String> img = [
    'Latte',
    'Espresso',
    'BlackCoffee',
    'ColdCoffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(   //4 boxes
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 140/195,
      children: [
        for(int i= 0;i<img.length;i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black45,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
              )
              ],
            ),


            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SingleItemScreen(img[i])));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/${img[i]}.png",
                      width: 120,
                      height: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i],style: TextStyle(
                          fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Best Coffee",style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                    padding: EdgeInsets.symmetric(vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$30",
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18,color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
      ],
    );
  }
}
