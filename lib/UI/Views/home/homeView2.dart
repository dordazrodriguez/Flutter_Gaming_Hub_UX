
import 'dart:ui';
import 'package:epic_games_ui/Collapsable_Drawer/lib/commons/collapsing_navigation_drawer_widget.dart';
import 'package:epic_games_ui/Components/LeftColumn.dart';
import 'package:epic_games_ui/Components/VerticalAppbar.dart';
import 'package:epic_games_ui/Components/leftWidget.dart';
import 'package:epic_games_ui/UI/config/size_config.dart';
import 'package:epic_games_ui/UI/shared/customDrawer.dart';
import 'package:epic_games_ui/UI/shared/margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:screen_utils/screen_utils.dart';
import 'package:stacked/stacked.dart';
import 'package:epic_games_ui/extensions/size_extension.dart';
import '../../../theme.dart';
import 'home_viewmodel.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/Views/home/home_viewmodel.dart';
import 'package:epic_games_ui/globals.dart' as gb;

class HomeView2 extends StatelessWidget {
  HomeViewModel get model => null;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Adapt.init(context);

    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: MainTheme.primary[50], //Colors.blueAccent[400],
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),

            actions: [
              //Spacer(),
              //Row(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  //radius: 20,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),

          //drawer: Drawer(),
          body: Container(
            child: Row(
              children: [
                VerticalAppBar(),
                //CollapsingNavigationDrawer(),
                //leftColumnBar(context),
                buildLeft(context, HomeViewModel()),
                //LeftWidget(context, model),
                //BuildLeftWidget(),
                //leftWidget(context),
                //getLeft(context),
                Expanded(
                  child: ClipRect(
                    child: Container(
                        color: Colors.black12,
                        height: Adapt.screenHeight,
                        width: Adapt.screenWidth,
                        /*  decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/landscape.jpg'),
                            fit: BoxFit.cover,
                          ),  
                        ),  */
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                            child: Container(child: buildRight(context)))),
                  ),
                ),
                //buildLeft(context, HomeViewModel()),
                //VerticalAppBar(),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () {},
    );
  }
}


getLeft(context) async {
  await  gb.isleftWidgetCollapsed==true 
  ? VerticalAppBar()
  : Row(children: [VerticalAppBar(), buildLeft(context, HomeViewModel())],); 
}