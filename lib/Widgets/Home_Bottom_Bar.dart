import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return CurvedNavigationBar(
      backgroundColor: Colors.black12,
      index: 2,
      items: [
        Icon(Icons.person_outline,size: 30,),
        Icon(Icons.favorite_outline,size: 30,),
        Icon(Icons.home,size: 30,color: Colors.redAccent,),
        Icon(Icons.location_city_outlined,size: 30,),
        Icon(Icons.post_add,size: 30,),

      ],
    );
  }
}