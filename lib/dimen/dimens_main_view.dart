import 'package:flutter/material.dart';
import 'package:ui_entrance_test/dimen/base_dimens.dart';

class DimensMainView extends BaseDimens {
  double heightImage = 0.0;
  double topRed = 0.0;
  double leftRed = 0.0;
  double topBlue = 0.0;
  double rightBlue = 0.0;
  double positionLeft = 0.0;
  double positionTop = 0.0;
  double blurRadius = 100;
  double spreadRadius = 5;
  double offsetShadow = 0;
  double opacity = 0.7;
  double containerCircle = 0.0;

  @override
  void initialDimens<MainView>() {
    heightImage = (orientation == Orientation.portrait)
        ? fullHeight * 0.3
        : fullWidth * 0.3;
    topRed = (orientation == Orientation.portrait)
        ? fullHeight * 0.2
        : fullHeight * 0.3;
    leftRed = (orientation == Orientation.portrait)
        ? fullWidth * 0.1
        : fullWidth * 0.3;
    topBlue = (orientation == Orientation.portrait)
        ? fullHeight * 0.25
        : fullHeight * 0.35;
    rightBlue = (orientation == Orientation.portrait)
        ? fullWidth * 0.1
        : fullWidth * 0.3;
    positionLeft = (fullWidth - heightImage)/2 + 30;
    positionTop = fullHeight * 0.05;
    containerCircle = (orientation == Orientation.portrait)
        ? fullWidth * 0.4
        : fullHeight * 0.4;
  }
}