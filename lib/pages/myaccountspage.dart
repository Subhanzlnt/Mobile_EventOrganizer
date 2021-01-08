import 'package:flutter/material.dart';
import 'package:sidebar_animation/pages/second.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class MyAccountsPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
        child: Image.asset('images/seminar.jpg'),
    );
    return MaterialApp (
      title: '',
      home: Scaffold(
        appBar: AppBar(
          title: Text("                             Event List"),
          backgroundColor: Colors.lightBlue,
          actions: <Widget>[
            Icon(Icons.search, color: Colors.black,)
          ],
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Hero(
                tag: "image",
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => second()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(25.0),
                    child: Column(
                      children: <Widget>[
                        Material(
                          elevation: 10.0,
                          borderRadius: BorderRadius.circular(20.0),
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(20.0),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1560088613-1bc2c78b26c7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1146&q=80",
                              height: 450.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Seminar Kewirausahaan",
                                style: TextStyle(
                                    fontSize: 16.0, fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                "20 Maret 2021",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color(0xffFD8349),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1493676304819-0d7a8d026dcf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
                          height: 450.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Musik Festival",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            "12 Januari 2021",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xffFD8349),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(25.0),
                child: Column(
                  children: <Widget>[
                    Material(
                      elevation: 10.0,
                      borderRadius: BorderRadius.circular(20.0),
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(20.0),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1544644181-1484b3fdfc62?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                          height: 450.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Wisata Bali",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                          Spacer(),
                          Text(
                            "4 Februari 2021",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xffFD8349),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
