import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String  myvar ;
  String  texttodisplay = "Defaut";

  void showtext(){
    setState(() {
         texttodisplay = myvar;
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
             child :TextField(
               onChanged: (text){
                 myvar = text;
               },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Text',
              
            ),
            style: TextStyle(
              fontSize: 18.0
            ),
            
          ),
          ),
          
          RaisedButton(
            onPressed: showtext,
            child: Text("press"),
          ),
          Text(
            "$texttodisplay",
          ),
        ],
      ),
      ),
      
    );
  }
}