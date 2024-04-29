import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(height: 250,
        child: Row(children: [
          Container(height: 230, width: 450, color: Colors.pinkAccent,),
        Expanded(
            child: Wrap(
              children: [
                Container(
                  height: 200, width: 200, child: Column(children: [
                    Container(color: Colors.pinkAccent, height: 100,),
                    Container(color: Colors.yellow, height: 100,),
                ],),
                )
              ],
            )
          )
        ],),
        ),

        Expanded(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),

            itemBuilder: (context, index) => Container(

              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(children: [
                  Container(
                    height: 150,
                    color: Colors.greenAccent,
                  ),
                  Container(
                    height: 70,
                    color: Colors.pink,
                  ),
                ],),
              ),
          ),
          itemCount: 10,
          ),
        ),
      ],
    );
  }
}
