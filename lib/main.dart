import 'package:flame/util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pole_riders/box-game.dart';


void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  BoxGame game = BoxGame();
  runApp(game.widget);
  
  flameUtil.addGestureRecognizer(new TapGestureRecognizer()
  ..onTapDown = (TapDownDetails d) => game.onTapDown(d));
}
