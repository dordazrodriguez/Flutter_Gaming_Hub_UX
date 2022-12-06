
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/Views/home/home_viewmodel.dart';
import 'package:epic_games_ui/UI/config/size_config.dart';
import 'package:epic_games_ui/UI/shared/margins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:epic_games_ui/globals.dart' as gb;
import 'package:flutter_icons/flutter_icons.dart';
import 'package:screen_utils/screen_utils.dart';
import '../theme.dart';
import 'package:provider/provider.dart';
import 'package:epic_games_ui/extensions/size_extension.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';


class BuildLeftWidget extends StatelessWidget {
  BuildLeftWidget({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
     // final myModel = context.watch<gb.isleftWidgetCollapsed>();
    return buildLeft(context, HomeViewModel());
  }
}


class BuildLeft extends ChangeNotifier {

}
