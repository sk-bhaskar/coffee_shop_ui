import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black45,
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8
        ),
      ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.home,
            color: Colors.deepOrange,
            size: 35,
          ),
      Icon(
        Icons.favorite_outlined,
        color: Colors.grey,
        size: 35,
      ),
          Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 35,
          ),
          Icon(
            Icons.person,
            color: Colors.grey,
            size: 35,
          ),
        ],
      ),
    );
  }
}
