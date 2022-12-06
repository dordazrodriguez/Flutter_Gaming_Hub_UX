import 'package:epic_games_ui/UI/Views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';



Widget leftColumnBar(context) {
  return Material(
    child: Container(
      width: MediaQuery.of(context).size.width * .04,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(      
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .10,
                child: CircleAvatar(),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            InkWell(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .10,
                child: CircleAvatar(),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            InkWell(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .10,
                child: CircleAvatar(),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            InkWell(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .10,
                child: CircleAvatar(
                  //backgroundColor: Colors.black12,
                  //child: Image.network('https://freepngimg.com/thumb/light/7-2-light-png-clipart.png'),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            InkWell(
              onTap: (){},
              child: Container(
                height: MediaQuery.of(context).size.height * .07,
                width: MediaQuery.of(context).size.width * .10,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.black12,
                  child: CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 40, child: Image.network('https://freepngimg.com/thumb/wings/34952-3-wings-image.png')),
                ),
              ),
            ),
            Spacer(),
            IconButton(
              alignment: Alignment.centerLeft,
              icon: Icon(Icons.menu, color: Colors.blueAccent[400]),
              onPressed: (){},
              ),
          ],
          ),
      ),
    ),
  );
}
