import 'package:flutter/material.dart';

import 'Home_Screen.dart';


class welcomeScren extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("images/first.jpeg"),
          fit: BoxFit.cover,
        opacity: 0.7,
    ),
  ),
          child:Material(
            color:Colors.transparent,
          child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 65,
                  horizontal: 25
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Travel With Us",style: TextStyle(
                      color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,letterSpacing: 1.5,),),
                    SizedBox(height: 10,),
                    Text("Lorem Ipsum is simply dummy text of "
                        "the printing and typesetting industry.Lorem Ipsum has been"
                        "the industry's standard dummy text ever since the 1500s,when "
                        "an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      letterSpacing: 1.2,
                    ),),
                    SizedBox(height: 60),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>HomePage(),
                      ));
                    },
                    child:Ink(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),

                    ) ,
                    ),

                  ],
                ),
              ),
    ),
          ),
  );
  }
}