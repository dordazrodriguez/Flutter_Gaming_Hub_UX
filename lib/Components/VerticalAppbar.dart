import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/Views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:epic_games_ui/globals.dart' as gb;
import '../theme.dart';

class VerticalAppBar extends StatefulWidget {
  @override
  _VerticalAppBarState createState() => _VerticalAppBarState();
}

class _VerticalAppBarState extends State<VerticalAppBar> {
  
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: AppBar(
        backgroundColor: MainTheme.primary[50], //Colors.blueAccent[400],
        primary: false,
        centerTitle: false,
        toolbarHeight: 40,
        title: Text('My Bar'),
        actions: [
          Container(
            width: 150,
            //height: 20,
            padding: EdgeInsets.all(5),
            child: Image.network(
              'https://static.wikia.nocookie.net/logopedia/images/8/88/99F5D667-5A16-4944-9D4E-A38B44867DDC.png/revision/latest?cb=20200714001450',
              color: Colors.white,
            ),
          )
        ],
        leading: RotatedBox(
            quarterTurns: 1,
            child: IconButton(
              icon: Icon(gb.isleftWidgetCollapsed
                  ? Icons.arrow_right
                  : Icons.arrow_left),
              onPressed: () {
                setState(() {  
                  gb.isleftWidgetCollapsed = !gb.isleftWidgetCollapsed;
                  buildLeft(context, HomeViewModel());
                });
              },
            )),
      ),
    );
  }
}

getLeftWidgetState() async {
  await gb.isleftWidgetCollapsed;
}
