import 'package:festival_app/utils/app_routes/routes.dart';
import 'package:festival_app/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
  use();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: app_routes,
    ),
  );
}