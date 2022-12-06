import 'package:epic_games_ui/AWS_User_AuthLogin/main.dart';
import 'package:epic_games_ui/AWS_User_AuthLogin/screens/home_screen.dart';
import 'package:epic_games_ui/example_from_stackoverflow.dart';
import 'package:epic_games_ui/UI/Views/home/homeView2.dart';
import 'package:epic_games_ui/UI/Views/home/home_view.dart';
import 'package:epic_games_ui/UI/Views/startup/startupScreen.dart';
import 'package:epic_games_ui/UI/config/size_config.dart';
import 'package:epic_games_ui/app/locator.dart';
import 'package:epic_games_ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:screen_utils/screen_utils.dart';
import 'app/router.gr.dart';
import 'package:window_size/window_size.dart';

import 'example_from_stackoverflow.dart';

void main() {
  setupLocator();
  runApp(ProviderScope(child: MyApp()));
  //setWindowTitle('');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //navigatorKey: locator<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              onPrimary: MainTheme.primary[50],
              primary: MainTheme.primary[50],
            ),
          )
          // textTheme: GoogleFonts.montserratTextTheme(),
          // fontFamily: 'Lato',
          ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentColor: MainTheme.primary[50],
          buttonColor: MainTheme.primary[50],
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              onPrimary: MainTheme.primary[50],
              primary: MainTheme.primary[50],
            ),
          )),
      themeMode: ThemeMode.dark,
      //initialRoute: Routes.homeView,
      //onGenerateRoute: Router1().onGenerateRoute,
      home: main2(), //AuthPage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Adapt.init(context);

    return Scaffold(
      body: HomeView(),
    );
  }
}
