import 'dart:wasm';

import 'package:flutter/material.dart';
class MaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Mask Using',style:TextStyle(color: Colors.black),),
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_horiz,color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/doctormask.jpg',width: _width),
            Container(
              padding: EdgeInsets.all(24.0),
              color: Colors.white,
              height: 800,
              child: Column(
                children: <Widget>[
                  Text('How to Put on and Remove a Face Mask',textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  RichText(
                    text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: "Clean your hands with soap and water or hand sanitizer before touching the mask.\n Remove a mask from the box and make sure there are no obvious tears or holes in either side of the mask.\n-Determine which side of the mask is the top. The side of the mask that has a stiff bendable edge is the top and is meant to mold to the shape of your nose.\nDetermine which side of the mask is the front. The colored side of the mask is usually the front and should face away from you while the white side touches your face\n-Follow the instructions below for the type of mask you are using\n -Face Mask with Ear loops: Hold the mask by the ear loops. Place a loop around each ear.\n Face Mask with Ties: Bring the mask to your nose level and place the ties over the crown of your",
                            style: Theme.of(context)
                                .textTheme
                                .body1
                                .copyWith(fontSize: 16.0),

                          )
                        ]
                    ),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
