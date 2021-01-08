import 'package:flutter/material.dart';
import 'package:sidebar_animation/pages/scanner.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

// ignore: must_be_immutable
class MyOrdersPage extends StatelessWidget with NavigationStates {
  String _result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text("Check in"),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.center_focus_strong),
          onPressed: () => _openScanner(context),
        ),
      ),
    );
  }

  Future _openScanner(BuildContext context) async{
    final result = await  Navigator.push(context, MaterialPageRoute(builder: (c) => Scanner() ));
    _result = result;
  }

}
