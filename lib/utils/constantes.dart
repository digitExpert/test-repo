import 'dart:convert';

import 'package:flutter/material.dart';

class AppSizes {
  static const int splashScreenTitleFontSize = 48;
  static const int titleFontSize = 34;
  static const double sidePadding = 15;
  static const double widgetSidePadding = 20;
  static const double buttonRadius = 25;
  static const double imageRadius = 8;
  static const double linePadding = 4;
  static const double widgetBorderRadius = 34;
  static const double textFieldRadius = 4.0;
  static const app_bar_size = 56.0;
  static const app_bar_expanded_size = 180.0;
  static const tile_width = 148.0;
  static const tile_height = 276.0;
  static const EdgeInsets bottomSheetPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 10);
}

class AppColors {
  static const red = Color(0xFFDB3022);
  static const black = Color(0xFF222222);
  static const platinum = Color(0xFFD3D3D3);
  static const lightGray = Color(0xFF9B9B9B);
  static const darkGray = Color(0xFF979797);
  static const offwhite = Color(0xF5F5F5);
  static const white = Color(0xFFFFFFFF);
  static const orange = Color(0xFFFFBA49);
  static const background = Color(0xFFE5E5E5);
  static const backgroundLight = Color(0xFFF9F9F9);
  static const transparent = Color(0x00000000);
  static const success = Color(0xFF2AA952);
  static const green = Color(0xFF2AA952);
  static const lightPurple = Color(0xFFD7A1F9);
  static const darkPurple = Color(0xFF51087E);
}

class AppConstantes {
  static const String clientId = 'Auth-client';
  static const String clientSecret = 'Auth-client-secret';

  static const String username = 'ngorfaye';
  static const String password = 'Ftn9IT7oQ3xVlB9x8U5ZOFKLjYc1w5L1dtv7YDk3yTcx';
  static String basicAuth =
      'Basic ' + base64Encode(utf8.encode('$clientId:$clientSecret'));

  static const String ORDERSUCCESSTEXT =
      'Commande en cours de traitement, des notifications vous seront envoyées au fur et à mesure par SMS.';

  static const String ORDERFAILURETEXT =
      'Une erreur s\'est produite lors de la commande, veuiller réessayer plus tard ou revoir les données saisies';

  static final paginationSize = 8;

  static final requestFailedErrorMsg =
      'Une erreur s\'est produite, veuillez revoir les données saisies ou réessayer plus tard';
}
