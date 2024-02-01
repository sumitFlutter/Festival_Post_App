import 'package:festival_app/screen/home/home_screen.dart';
import 'package:festival_app/screen/splesh/splesh_screen.dart';
import 'package:flutter/cupertino.dart';

import '../../screen/festival_view/festival_view_screen.dart';

Map <String,WidgetBuilder> app_routes ={
  "/":(context) => const SpleshScreen(),
  "home":(context) => const HomeScreen(),
  "festival":(context) =>const FestivalViewScreen(),
};