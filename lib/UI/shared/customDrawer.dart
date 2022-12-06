import 'package:epic_games_ui/UI/Views/home/home_viewmodel.dart';
import 'package:epic_games_ui/UI/shared/margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:epic_games_ui/extensions/size_extension.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget buildLeft(HomeViewModel model) {
    return Material(
      textStyle: TextStyle(
        color: Colors.white70,
        fontFamily: 'Lato',
      ),
      child: Container(
        width: 21.width,
        height: 100.height,
        decoration: BoxDecoration(
          color: Colors.blueAccent[400],
        ),
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 4.height,
                ),
                CupertinoScrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 2.4.width,
                            right: 1.3.width,
                          ),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/bert_image.jpg'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DART VADER',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: Text(
                                '128,564\$',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Ymargin(3.3.height),
                Center(
                  child: SizedBox(
                    width: 15.width,
                    height: 5.height,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 1.3.width,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(),
                        filled: true,
                        fillColor: Color.fromRGBO(0, 0, 0, 0.2),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 1.2.width,
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Opacity(
                          opacity: 0.5,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 1.5.width,
                          ),
                        ),
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 3.width),
                      ),
                    ),
                  ),
                ),
                Ymargin(3.4.height),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.1.width,
                    bottom: 2.5.height,
                  ),
                  child: Text(
                    'EPIC GAMES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3.width,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.width),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => model.changeFirstIndex(1),
                        child: iconList1(
                          iconData: Icons.home,
                          title: 'Home',
                          active: model.firstIndex == 1,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(2),
                        child: iconList1(
                          iconData: Icons.store,
                          title: 'Store',
                          active: model.firstIndex == 2,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(3),
                        child: iconList1(
                          iconData: FontAwesome.th_large,
                          title: 'Library',
                          active: model.firstIndex == 3,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(4),
                        child: iconList1(
                          iconData: Icons.group,
                          title: 'Community',
                          active: model.firstIndex == 4,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeFirstIndex(5),
                        child: iconList1(
                          iconData: Icons.settings,
                          title: 'Settings',
                          active: model.firstIndex == 5,
                        ),
                      ),
                    ],
                  ),
                ),
                Ymargin(3.2.height),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.1.width,
                    bottom: 2.5.height,
                  ),
                  child: Text(
                    'PLAYER',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3.width,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.width),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () => model.changeSecondIndex(1),
                        child: iconList2(
                          iconData: Icons.person,
                          title: 'Profile',
                          active: model.secondIndex == 1,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeSecondIndex(2),
                        child: iconList2(
                          iconData: Icons.adjust,
                          title: 'Activity',
                          active: model.secondIndex == 2,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeSecondIndex(3),
                        child: iconList2(
                          iconData: Icons.chat_bubble,
                          title: 'Friends',
                          active: model.secondIndex == 3,
                        ),
                      ),
                      InkWell(
                        onTap: () => model.changeSecondIndex(4),
                        child: iconList2(
                          iconData: FontAwesome.cloud_download,
                          title: 'Downloads',
                          active: model.secondIndex == 4,
                        ),
                      ),
                    ],
                  ),
                ),
                Ymargin(8.height),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.1.width,
                    bottom: 2.3.height,
                  ),
                  child: Text(
                    'MESSAGES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3.width,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.1.width),
                  child: CupertinoScrollbar(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/timi.jpg'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Xmargin(8),
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/bolu.jpg'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Xmargin(8),
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/rinz.jpg'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          Xmargin(8),
                          Stack(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/llama.png'),
                              ),
                              Positioned(
                                  bottom: 1,
                                  right: 0,
                                  child: Container(
                                    height: 10,
                                    width: 10,
                                    decoration: BoxDecoration(
                                      color: Colors.blueAccent[400],
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 6,
                                        width: 6,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
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
      ),
    );
  }

  Widget iconList1({
    String title,
    IconData iconData,
    bool active = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.8.height),
      child: AnimatedOpacity(
        opacity: active ? 1 : 0.5,
        duration: Duration(milliseconds: 300),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 1.4.width,
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.4.width),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 1.3.width,
                ),
              ),
            ),
            Padding(
              padding: title.length > 8
                  ? EdgeInsets.only(left: 4.5.width)
                  : EdgeInsets.only(left: 8.width),
              child: active
                  ? Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 1.5.width,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconList2({
    String title,
    IconData iconData,
    bool active = false,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.9.height),
      child: AnimatedOpacity(
        opacity: active ? 1 : 0.5,
        duration: Duration(milliseconds: 300),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 1.4.width,
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.4.width),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 1.3.width,
                ),
              ),
            ),
            Padding(
              padding: title.length > 8
                  ? EdgeInsets.only(left: 4.5.width)
                  : EdgeInsets.only(left: 8.2.width),
              child: active
                  ? Icon(
                      Octicons.primitive_dot,
                      color: Colors.white,
                      size: 1.2.width,
                    )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
