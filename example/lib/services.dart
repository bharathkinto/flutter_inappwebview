import 'package:flutter/material.dart';

class Services{

  Column returnServicesColumn(){
    return Column(
//            mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(10),
          height: 100,
          width: 410,
          //elevation: 100,
          //margin: EdgeInsets.all(4),
          //padding: EdgeInsets.all(10),
          color: Colors.green,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.directions_car,
                size: 50,
              ),
              Text('Text related to Kinto ONE',
                style: TextStyle(fontSize: 10,
                  //fontStyle: FontStyle.italic
                ),),
            ],
          ),
        ),
        //SizedBox(height: 1,),
        Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(

              //padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 10,top: 0,),
              height: 100,
              width: 190,
              //elevation: 100,
              //margin: EdgeInsets.all(4),
              //padding: EdgeInsets.all(10),
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.directions_car,
                    size: 50,
                  ),
                  Text('Text related to Kinto Flex',
                    style: TextStyle(fontSize: 10,
                        fontStyle: FontStyle.italic),),
                ],
              ),
            ),
            SizedBox(width: 0,),
            Container(
              height: 100,
              width: 190,
              //elevation: 100,
              //margin: EdgeInsets.all(4),
              //padding: EdgeInsets.all(10),
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.directions_car,
                    size: 50,
                  ),
                  Text('Text related to Kinto Share',
                    style: TextStyle(fontSize: 10,
                        fontStyle: FontStyle.italic),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              width: 200,
              //elevation: 100,
              //margin: EdgeInsets.all(4),
              //padding: EdgeInsets.all(10),
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.directions_car,
                    size: 50,
                  ),
                  Text('Text related to Kinto Flex',
                    style: TextStyle(fontSize: 8,
                        fontStyle: FontStyle.italic),),
                ],
              ),
            ),
            SizedBox(width: 5,),
            Container(
              height: 100,
              width: 200,
              //elevation: 100,
              //margin: EdgeInsets.all(4),
              //padding: EdgeInsets.all(10),
              color: Colors.green,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.directions_car,
                    size: 50,
                  ),
                  Text('Text related to Kinto Flex',
                    style: TextStyle(fontSize: 8,
                        fontStyle: FontStyle.italic),),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5,),
        Container(
          height: 100,
          width: 410,
          //elevation: 100,

          //margin: EdgeInsets.all(4),
          //padding: EdgeInsets.all(10),
          color: Colors.green,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.directions_car,
                size: 50,
              ),
              Text('This is Kinto ',
                style: TextStyle(fontSize: 10),),
            ],
          ),
        ),
      ],
    );

  }

}