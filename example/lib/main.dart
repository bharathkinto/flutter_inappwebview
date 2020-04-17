import 'package:flutter/material.dart';
import 'package:flutter_inappwebview_example/in_app_webiew_example.screenfour.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'services.dart';
import 'services/weather.dart';
import 'in_app_webiew_example.screen.dart';
import 'in_app_webiew_example.screentwo.dart';

import 'in_app_webiew_example.screenthree.dart';
void main() => runApp(MyHomePage(title: 'Hello'));



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WeatherModel weatherModel = WeatherModel();
  String temperature;

  Future<void> temp() async{
    temperature= await weatherModel.getLocationWeather();
    print(temperature);
  }

  void initState() {
    super.initState();
    temp();

  }

  int _selectedIndex = 0;
  Widget serviceColumn =Services().returnServicesColumn();
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    //page of service
    InAppWebViewExampleScreen(),
    InAppWebViewExampleScreenTwo(),
InAppWebViewExampleScreenThree(),
    InAppWebViewExampleScreenFour(),
    Text(
      'No messages now',
      style: optionStyle,
    ),
    Text(
      'Please register',
      style: optionStyle,
    ),
    Text(
      'Your Kinto',
      style: optionStyle,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(flex:5,child: Image.asset('images/onehp.png',)),
        Expanded(child: Container(child: Text("Welcome to Kinto, Explore more in services",style: TextStyle(fontSize: 20,),),)),

      ],
    ),
    Column(
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
      ],
    ),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color(0xFF00708D),
      home: Scaffold(backgroundColor: Color(0xFF00708D),
        appBar: AppBar(
          backgroundColor: Color(0xFF00708D),
          //Color(0xFF389FB5),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(flex:4,child: Text("Hello B")),
              Expanded(child: Text(" $temperature °C"))
            ],
          ),

        ),
        body: Center(

          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xFF00708D),
          selectedIconTheme: IconThemeData(color: Colors.white,size: 45),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.home,), title: Text('home'),),
            BottomNavigationBarItem(icon:Icon(FontAwesomeIcons.cloudversify,),title:Text('services'),),
            BottomNavigationBarItem(icon: Icon(Icons.message),title: Text('Messages'),),
            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.list),title: Text('activities'),),

            BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userCircle),title: Text('My Kinto'),),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

