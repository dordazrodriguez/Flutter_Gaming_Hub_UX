import 'dart:ui';

import 'package:epic_games_ui/UI/Views/home/homeView2.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:epic_games_ui/UI/shared/margins.dart';

class StartupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/landscape.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Flexible(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to GameAccess',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                      color: Colors.blueAccent[400],
                      height: 50,
                      width: 100,
                      child: RaisedButton(
                          color: Colors.blueAccent[400],
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeView2()),
                            );
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
