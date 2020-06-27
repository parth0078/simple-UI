import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'comman/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: FlutterLogo(
          colors: Colors.green,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 110.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text(
                  "Get Coaching",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Montserrat'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 100, 25, 0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.0,
                        color: Colors.grey,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              top: 25, bottom: 5.0, left: 5.0, right: 25.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "YOU HAVE",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: "Quicksand",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
                                child: Text(
                                  "206",
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          margin: EdgeInsets.only(
                              top: 25, bottom: 5.0, left: 25.0, right: 5.0),
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Colors.green[500].withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "Buy more",
                              style: TextStyle(color: Colors.green),
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Text(
                    "MY COACHES",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: Text(
                    "VIEW PAST SESSIONS",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            physics: ScrollPhysics(),
            children: <Widget>[
              _cardView("Alyx", "Available for next 5 minute", 0),
              _cardView("Alyx", "Available for next 5 minute", 1),
              _cardView("Alyx", "Available for next 5 minute", 1),
              _cardView("Alyx", "Available for next 5 minute", 0),
              _cardView("Alyx", "Available for next 5 minute", 0),
              _cardView("Alyx", "Available for next 5 minute", 1),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardView(String name, String status, cardIndex) {
    return Card(
      elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Stack(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.socialmediagossips.com/wp-content/uploads/2019/09/Dino-James-768x511.jpg"),
                  radius: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 36.0),
                  child: CircleAvatar(
                    backgroundColor:cardIndex==0? Colors.green:Colors.orange,
                    radius: 7,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.0,
            ),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              child: Flexible(
                child: Text(
                  status,
                  maxLines: 2,
                  softWrap: true,
                  textScaleFactor: 1.5,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 2.0,
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,

              child: Center(
                child: Text(
                  "Request",
                  style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              decoration: BoxDecoration(
                  color: cardIndex==0?Colors.green[400]:Colors.grey ,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            )
          ],
        ));
  }
}
