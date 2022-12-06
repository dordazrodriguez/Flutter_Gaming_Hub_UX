import 'package:epic_games_ui/Components/VerticalAppbar.dart';
import 'package:epic_games_ui/Components/buildLeft.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/Views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:epic_games_ui/globals.dart' as gb;
import 'LeftColumn.dart';

class BuildLeftWidget extends StatefulWidget {
  @override
  _BuildLeftWidgetState createState() => _BuildLeftWidgetState();
}

class _BuildLeftWidgetState extends State<BuildLeftWidget> {
  @override
  Widget build(BuildContext context) {
    return leftWidget(context);
  }
}

Widget leftWidget(context) {
  if (gb.isleftWidgetCollapsed == true) {
    return VerticalAppBar();
  } else {
    return Row(children: [VerticalAppBar(), buildLeft(context, HomeViewModel())]);
  }
}
