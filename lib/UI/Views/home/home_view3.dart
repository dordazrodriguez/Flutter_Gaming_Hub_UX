
import 'package:epic_games_ui/Collapsable_Drawer/lib/custom_navigation_drawer.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/shared/margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:screen_utils/screen_utils.dart';

import 'home_viewmodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigation Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text("Collapsing Navigation Drawer/Sidebar",),
      ),
      //drawer: CollapsingNavigationDrawer(),
      body: Row(
        children: <Widget>[
          Container(color: selectedColor,),
          CollapsingNavigationDrawer(),
          
        ],
      )
    );
  }
}

Widget buildRight(BuildContext context, HomeViewModel model) {
  var textTheme = Theme.of(context).textTheme;

  return Material(
    color: Colors.transparent,
    textStyle: TextStyle(
      color: Colors.grey[600],
      fontFamily: 'WorkSans',
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CupertinoScrollbar(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 37),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Favorite Games',
                    style: textTheme.headline6.copyWith(
                      fontFamily: 'WorkSans',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[900],
                    ),
                  ),
                  Ymargin(10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 150,
                          width: 110,
                          child: Card(
                            semanticContainer: false,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/images/fortnite.jpg',
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                        Xmargin(6),
                        SizedBox(
                          height: 150,
                          width: 110,
                          child: Card(
                            semanticContainer: false,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/images/corruption.jpg',
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                        Xmargin(6),
                        SizedBox(
                          height: 150,
                          width: 110,
                          child: Card(
                            semanticContainer: false,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/images/overpass.jpg',
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                        Xmargin(6),
                        SizedBox(
                          height: 150,
                          width: 110,
                          child: Card(
                            semanticContainer: false,
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              'assets/images/maneater.jpg',
                              fit: BoxFit.cover,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                        Xmargin(6),
                        SizedBox(
                          height: 150,
                          width: 110,
                          child: Card(
                            color: Colors.blueAccent[400],
                            semanticContainer: false,
                            clipBehavior: Clip.antiAlias,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Ymargin(25),
                  Row(
                    children: [
                      Text(
                        'Popular Games',
                        style: textTheme.headline6.copyWith(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[900],
                        ),
                      ),
                      Xmargin(390),
                      Icon(
                        FontAwesome.long_arrow_right,
                        color: Colors.grey[600],
                        size: 19,
                      ),
                    ],
                  ),
                  Ymargin(10),
                  SizedBox(
                    height: 270,
                    width: 567,
                    child: Card(
                      semanticContainer: false,
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      elevation: 0,
                      child: Row(
                        children: [
                          Container(
                            width: 320,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/outer_worlds.jpeg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.0,
                              vertical: 25,
                            ),
                            child: Container(
                              height: 180,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          child: Icon(
                                            Icons.chevron_left,
                                            color: Colors.grey[800],
                                            size: 17,
                                          ),
                                          onTap: () {},
                                        ),
                                        Xmargin(12),
                                        InkWell(
                                          child: Icon(
                                            Icons.chevron_right,
                                            color: Colors.grey[800],
                                            size: 17,
                                          ),
                                          onTap: () {},
                                        ),
                                        Xmargin(100),
                                        Row(
                                          children: [
                                            Icon(
                                              FontAwesome.dot_circle_o,
                                              color: Colors.grey[800],
                                              size: 12,
                                            ),
                                            Xmargin(3),
                                            Icon(
                                              Octicons.primitive_dot,
                                              color: Colors.grey,
                                              size: 8,
                                            ),
                                            Xmargin(3),
                                            Icon(
                                              Octicons.primitive_dot,
                                              color: Colors.grey,
                                              size: 8,
                                            ),
                                            Xmargin(3),
                                            Icon(
                                              Octicons.primitive_dot,
                                              color: Colors.grey,
                                              size: 8,
                                            ),
                                            Xmargin(3),
                                            Icon(
                                              Octicons.primitive_dot,
                                              color: Colors.grey,
                                              size: 8,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Ymargin(20),
                                    Text(
                                      'The Outer Worlds',
                                      style: textTheme.subtitle1.copyWith(
                                        fontFamily: 'WorkSans',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    Ymargin(8),
                                    SizedBox(
                                      width: 185,
                                      child: Text(
                                        'The Outer Worlds is a new Single player first-person sci-fi RPG from Obsidian Entertainment and Private Division.',
                                        style: textTheme.caption.copyWith(
                                          color: Colors.grey,
                                          fontFamily: 'WorkSans',
                                        ),
                                      ),
                                    ),
                                    Ymargin(14),
                                    Container(
                                      height: 27,
                                      width: 75,
                                      decoration: BoxDecoration(
                                        color: Colors.blueAccent[400],
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Up to -25%',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Ymargin(25),
                  Row(
                    children: [
                      Text(
                        'News',
                        style: textTheme.headline6.copyWith(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[900],
                        ),
                      ),
                      Xmargin(455),
                      Row(
                        children: [
                          GestureDetector(
                            child: Icon(
                              FontAwesome.th_large,
                              color: Colors.grey[600],
                              size: 16,
                            ),
                            onTap: () {},
                          ),
                          Xmargin(13),
                          Icon(
                            Icons.format_list_bulleted,
                            color: Colors.grey[600],
                            size: 19,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Ymargin(10),
                  buildNewsCard(context),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
        ),
        // Xmargin(5.width),
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 33,
          ),
          padding: EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 32,
          ),
          height: Adapt.screenHeight,
          width: 342,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(13),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Recently Played',
                      style: textTheme.subtitle1.copyWith(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 100)),
                    //Xmargin(128),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        icon: Icon(Icons.settings),
                        color: Colors.grey[600],

                        //iconSize: 19,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Ymargin(20),
                Container(
                  height: 360,
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/the_cycle.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                Ymargin(18),
                Row(
                  children: [
                    Text(
                      'The Cycle',
                      style: textTheme.subtitle1.copyWith(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                      ),
                    ),
                    Xmargin(163),
                    Text(
                      '43%',
                      style: textTheme.subtitle2.copyWith(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[900],
                      ),
                    ),
                  ],
                ),
                Ymargin(14),
                LinearPercentIndicator(
                  width: 270,
                  lineHeight: 7.0,
                  percent: 0.43,
                  backgroundColor: Colors.grey[350],
                  progressColor: Colors.blueAccent[400],
                ),
                Ymargin(20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6,
                    bottom: 20,
                  ),
                  child: Container(
                    height: 35,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[400],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        'Play',
                        style: textTheme.subtitle1.copyWith(
                          fontFamily: 'WorkSans',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6,
                    bottom: 12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesome.clock_o,
                        color: Colors.grey[600],
                        size: 17,
                      ),
                      Xmargin(10),
                      Text(
                        "You've played 48 hours",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6,
                    bottom: 20,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FontAwesome.calendar_o,
                        color: Colors.grey[600],
                        size: 15,
                      ),
                      Xmargin(10),
                      Text(
                        "Last played 06.07.2020",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Achievements',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Ymargin(10),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/cycle_1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Xmargin(8),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/cycle_2.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Xmargin(8),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/cycle_3.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Xmargin(8),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/cycle_4.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Xmargin(8),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage('assets/images/cycle_5.jpeg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.grey[800].withOpacity(0.6),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  '+58',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Ymargin(20),
                Text(
                  'Screenshots',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Ymargin(10),
                Container(
                  height: 200,
                  width: 300,
                  child: GridView.count(
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    crossAxisCount: 3,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/cycle_screen_1.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage('assets/images/cycle_2.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage('assets/images/cycle_5.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/cycle_screen_2.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage('assets/images/cycle_3.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors.grey[800].withOpacity(0.8),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              '+12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30),
        ),
      ]));}