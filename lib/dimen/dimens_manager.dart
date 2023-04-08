import 'package:flutter/cupertino.dart';
import 'package:ui_entrance_test/dimen/dimens_main_view.dart';
import 'package:ui_entrance_test/view/main_view.dart';

class DimensManager {
  static late DimensManager _instance;

  static DimensManager get instance => _instance;

  late DimensMainView _mainDimension;

  static DimensMainView get mainDimension => _instance._mainDimension;

  void _initDimens() {
    _mainDimension = DimensMainView();
  }

  factory DimensManager() {
    return _instance = DimensManager._();
  }

  DimensManager._() {
    _initDimens();
  }

  void calculatorRatio<T>(BuildContext context) {
    switch (T) {
      case HomeView:
        _mainDimension.calculatorRatio<T>(context);
        break;
    }
  }
}