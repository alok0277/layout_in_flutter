import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  Widget build (BuildContext context){
    return MaterialApp(
      title: "Alok's App",
      home: Scaffold(
        appBar: AppBar(title:Text("Alok's App")),
        body:Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:AssetImage("assets/background.jpg"),
                      fit:BoxFit.cover
                  )
              ),
            ),
            Column(
                children: [
                  Center(
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/avatar2.jpg"),
                        ),
                      )
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text("Alok Kavilkar", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    child:Text(
                      "Hii. I'm Alok Kavilkar",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ) ,
                  ),
                  Padding(padding: EdgeInsets.all(20)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      const Icon(Icons.star, color: Colors.black),
                    ],
                  ),

                  Text(
                    "Reviews and Rating."
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.call),
                          Text("Call Me")
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Column(
                        children: [
                          Icon(Icons.mail),
                          Text("Mail me")
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(20)),
                      Column(
                        children: [
                          Icon(Icons.account_circle),
                          Text("See me")
                        ],
                      )
                    ],
                  )
                ]
            )
          ],
        ) ,
      ),
    );
  }
}